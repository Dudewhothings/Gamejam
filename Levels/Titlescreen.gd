extends Node2D


func _on_Start_pressed():
	Global.resetgame()
	assert(get_tree().change_scene("res://Levels/LevelOne.tscn") == OK)


func _on_Quit_pressed():
	get_tree().quit()
