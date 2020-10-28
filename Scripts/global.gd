extends Node

var current_stage

func _ready():
	pass

func go_next_stage():
	current_stage += 1
	var new_scene = "res://Scenes/Levels/Level"+str(current_stage)+".tscn"
	var file = File.new()
	if file.file_exists(new_scene):
		get_tree().change_scene(new_scene)
	else:
		get_tree().change_scene("res://Scenes/ThankYou.tscn")
		
