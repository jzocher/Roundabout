extends MarginContainer

func _ready():
	pass # Replace with function body.

func _on_LevelSelect_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
	get_tree().paused = false

func _on_NextLevel_pressed():
	Global.go_next_stage()
	get_tree().paused = false
