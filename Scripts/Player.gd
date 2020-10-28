extends KinematicBody2D

const ACCEL 	= 500
const DEACCEL	= 500
const MAX_SPEED = 200

var speed 		= 0
var turn_speed 	= 3
var velocity 	= Vector2()

signal crashed

func _physics_process(delta):
	var moving = 0
	var rot_dir = 0
	if Input.is_action_pressed('move_go'):
		moving = 1
	if Input.is_action_pressed('move_stop'):
		moving = -1
	if Input.is_action_pressed('move_right'):
		if speed > 0:
			rot_dir += 1
		elif speed < 0:
			rot_dir -= 1
	if Input.is_action_pressed('move_left'):
		if speed > 0:
			rot_dir -= 1
		elif speed < 0:
			rot_dir += 1
	if speed < 50 and speed > -50:
		rotation = rotation # Cannot turn while reversing
	else:
		rotation += (turn_speed * delta) * rot_dir
	
	velocity = Vector2()
		
	if moving == 1 and speed < MAX_SPEED:
		speed += ACCEL * delta
	elif moving == -1 and speed > -MAX_SPEED/2.0:
		speed -= ACCEL * delta
	else:
		if floor(speed) > 10:
			speed -= DEACCEL * delta
		elif floor(speed) < 0:
			speed += DEACCEL * delta
		else:
			speed = 0
	
	velocity = Vector2(speed, 0).rotated(rotation)
	
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		emit_signal("crashed")
	
	move_and_slide(velocity)
