extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _unhandled_input(event):
	if event.is_action_pressed("menu"):
		if visible:
			hide()
			get_tree().paused = false
		else:
			show()
			get_tree().paused = true


func _on_Quit_pressed():
	get_tree().quit()


func _on_Restart_Level_pressed():
	if(Global.currentlevel == 1):
		get_tree().change_scene("res://Levels/LevelOne.tscn")
	if(Global.currentlevel == 2):
		get_tree().change_scene("res://Levels/LevelTwo.tscn")
	if(Global.currentlevel == 3):
		get_tree().change_scene("res://Levels/LevelThree.tscn")


func _on_Reset_pressed():
	Global.resetgame()
	
