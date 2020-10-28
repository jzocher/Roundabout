extends MarginContainer



func _on_MainMenu_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")


func _on_Play_pressed():
	get_tree().change_scene("res://Scenes/LevelSelect.tscn")
