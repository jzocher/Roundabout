extends KinematicBody2D

var velocity = Vector2()
var traffic_sprites = []
var rng = RandomNumberGenerator.new()

signal crashed
	
func _ready():
	random_car()

func random_car():
	var path = "res://Assets/Vehicles"
	var dir = Directory.new()
	dir.open(path)
	dir.list_dir_begin()
	while true:
		var file_name = dir.get_next()
		if file_name == "":
			#break the while loop when get_next() returns ""
			break
		elif !file_name.begins_with(".") and !file_name.ends_with(".import"):
			#if !file_name.ends_with(".import"):
			traffic_sprites.append(load(path + "/" + file_name))
	dir.list_dir_end()
	
	rng.randomize()
	var rand_num = rng.randi_range(0, traffic_sprites.size()-1)
	if rand_num > 0 and rand_num < traffic_sprites.size()-1:
		var random_sprite = traffic_sprites[rng.randi_range(0, traffic_sprites.size()-1)]
		$Sprite.texture = random_sprite
	else:
		$Sprite.texture = load("res://Assets/Vehicles/car_black_small_5.png")
	

func _physics_process(delta):
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		emit_signal("crashed")
