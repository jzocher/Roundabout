extends Node2D

var traffic = []

func _ready():
	get_tree().paused = false
	$WinScreen.visible = false
	$LoseScreen.visible = false
	traffic = get_tree().get_nodes_in_group("traffic")
	for t in traffic:
		t.connect("crashed",self,"_on_TrafficCar_crashed")
	var player = get_tree().get_root().find_node("Player", true, false)
	player.connect("crashed",self,"_on_TrafficCar_crashed")
	
	
func _on_Finish_body_entered(body):
	if body.name == "Player":
		get_tree().paused = true
		$WinScreen.visible = true

func _on_TrafficCar_crashed():
	get_tree().paused = true
	$LoseScreen.visible = true
