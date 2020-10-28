extends MarginContainer

func _ready():
	GlobalScene.get_node("Music").play()
	
func _on_Start_pressed():
	get_tree().change_scene("res://Scenes/LevelSelect.tscn")

func _on_HowTo_pressed():
	get_tree().change_scene("res://Scenes/HowTo.tscn")

func _on_Exit_pressed():
	get_tree().quit()
