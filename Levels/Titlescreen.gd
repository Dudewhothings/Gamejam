extends Node2D


func _on_Start_pressed():
	Global.resetgame()
	get_tree().change_scene("res://Levels/LevelOne.tscn")


func _on_Quit_pressed():
	get_tree().quit()
