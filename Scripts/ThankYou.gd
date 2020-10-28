extends MarginContainer

func _ready():
	get_tree().paused = false

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
