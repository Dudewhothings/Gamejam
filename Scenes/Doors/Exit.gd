extends Area2D



func _on_Exit_body_entered(body):
	if(body.name == "Player"):
		Global.playerlives = 10
		if(Global.currentlevel == 1):
			Global.LvlOneComplete = true
			Global.currentlevel = 2
			get_tree().change_scene("res://Levels/LevelTwo.tscn")
		elif(Global.currentlevel == 2):
			Global.LvlTwoComplete = true
			Global.currentlevel = 3
			get_tree().change_scene("res://Levels/LevelThree.tscn")
		elif(Global.currentlevel == 3):
			Global.LvlThreeComplete = true
			Global.currentlevel = 4
			get_tree().change_scene("res://Levels/Victoryscreen.tscn")
		
