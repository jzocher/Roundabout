extends Path2D

var vehicle = ""
var cars = []
var car_location = 0
export(float) var car_speed = 0.0020

func _find_cars():
	cars = []
	for child in self.get_children():
		cars.append(child)
		if child.is_in_group("traffic"):
			cars.append(child)

func _physics_process(_delta):
	_find_cars()
	if cars.size() != 0:
		for c in cars.size():
			vehicle = get_node(cars[c].name)
			car_location = vehicle.get_unit_offset() + car_speed
			
			vehicle.set_unit_offset(car_location)
			car_location += car_speed

