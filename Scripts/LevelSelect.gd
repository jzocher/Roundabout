extends MarginContainer

func _ready():
	get_tree().paused = false
#	$MarginContainer/VBoxContainer/GridContainer/L1.grab_focus()
#
#func _physics_process(delta):
#	if $MarginContainer/VBoxContainer/GridContainer/.is_hovered() == true:
#		$MarginContainer/VBoxContainer/GridContainer/.grab_focus()

func _on_L1_pressed():
	get_tree().change_scene("res://Scenes/Levels/Level1.tscn")
	Global.current_stage = 1

func _on_L2_pressed():
	get_tree().change_scene("res://Scenes/Levels/Level2.tscn")
	Global.current_stage = 2
	
func _on_L3_pressed():
	get_tree().change_scene("res://Scenes/Levels/Level3.tscn")
	Global.current_stage = 3
	
func _on_L4_pressed():
	get_tree().change_scene("res://Scenes/Levels/Level4.tscn")
	Global.current_stage = 4
	
func _on_L5_pressed():
	get_tree().change_scene("res://Scenes/Levels/Level5.tscn")
	Global.current_stage = 5

func _on_L6_pressed():
	get_tree().change_scene("res://Scenes/Levels/Level6.tscn")
	Global.current_stage = 6
#
#func _on_L7_pressed():
#	get_tree().change_scene("res://Scenes/Levels/Level7.tscn")
#
#func _on_L8_pressed():
#	get_tree().change_scene("res://Scenes/Levels/Level8.tscn")
#
#func _on_L9_pressed():
#	get_tree().change_scene("res://Scenes/Levels/Level9.tscn")
#
#func _on_L10_pressed():
#	get_tree().change_scene("res://Scenes/Levels/Level10.tscn")


func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
