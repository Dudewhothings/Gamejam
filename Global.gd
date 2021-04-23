extends Node

var playerlives = 10
var LvlOneComplete = false
var LvlTwoComplete = false
var LvlThreeComplete = false
var currentlevel = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(playerlives <= 0):
		print("lost")

func resetgame():
	playerlives = 10
	LvlOneComplete = false
	LvlTwoComplete = false
	LvlThreeComplete = false
	currentlevel = 1
	get_tree().change_scene("res://Levels/LevelOne.tscn")
