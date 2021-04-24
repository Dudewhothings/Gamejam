extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var player = null
func _process(_delta):
	if player == null:
		player = get_node_or_null("/root/World/Player_Container/Player")


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
		assert(get_tree().change_scene("res://Levels/LevelOne.tscn") == OK)
	if(Global.currentlevel == 2):
		assert(get_tree().change_scene("res://Levels/LevelTwo.tscn") == OK)
	if(Global.currentlevel == 3):
		assert(get_tree().change_scene("res://Levels/LevelThree.tscn") == OK)


func _on_Reset_pressed():
	Global.resetgame()
	

func _on_Killself_pressed():
	player.current_health = 0
