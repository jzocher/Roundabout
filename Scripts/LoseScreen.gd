extends MarginContainer

func _ready():
	pass # Replace with function body.

func _on_LevelSelect_pressed():
	get_tree().change_scene("res://Scenes/LevelSelect.tscn")
	get_tree().paused = false

func _on_Retry_pressed():
	get_tree().reload_current_scene()
	get_tree().paused = false
