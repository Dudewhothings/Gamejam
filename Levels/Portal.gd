extends Area2D

func _ready():
	pass 


func _on_Portal_entered(body):
	if body.name == "Player":
		if name == "Portal_to_2":
			Global.level = 2
			get_tree().change_scene("res://Levels/LevelTwo.tscn")
		if name == "Portal_to_3":
			Global.level = 3
			get_tree().change_scene("res://Levels/LevelThree.tscn")
