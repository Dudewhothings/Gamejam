extends Node2D


# Declare member variables here. Examples:
# var a = 2
var player = null
var playerbody = preload("res://Scenes/Player/Player.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if player == null:
		player = get_node_or_null("/root/World/Player_Container/Player")
	else:
		if(Global.playerlives > 0 and player.isAlive == false):
			player.position = $Point.global_position
			player.current_health = 3
			player.isAlive = true
