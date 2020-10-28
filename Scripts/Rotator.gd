tool
extends Node2D

export(Vector2) var  radius = Vector2.ONE * 256
export(float) var  rotation_duration := 4.0

var cars = []
var orbit_angle_offset = 0
var previous_child_count = 0

func _find_cars():
	cars = []
	for child in get_children():
		if child.is_in_group("traffic"):
			cars.append(child)
			
func _update_traffic():
	if cars.size() != 0:
		var spacing = 2 * PI / float(cars.size())
		for c in cars.size():
			var new_position = Vector2()
			new_position.x = cos(spacing * c + orbit_angle_offset) * radius.x
			new_position.y = sin(spacing * c + orbit_angle_offset) * radius.y
			cars[c].position = new_position
			#cars[c].rotation = get_position().direction_to(new_position)
#			var direction_to = get_position().direction_to(new_position)
#			print(direction_to)
	
func _physics_process(delta):
	if previous_child_count != get_child_count():
		previous_child_count = get_child_count()
		_find_cars()
	orbit_angle_offset -= 2 * PI * delta / float(rotation_duration)
	orbit_angle_offset = wrapf(orbit_angle_offset, -PI, PI)
	_update_traffic()
