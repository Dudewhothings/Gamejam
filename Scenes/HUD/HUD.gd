extends Control


# Declare member variables here. Examples:
# var a = 2
var player = null


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	if get_node_or_null("/root/World/Player_Container/Player") != null:
		player = get_node_or_null("/root/World/Player_Container/Player")
		$Container/HP.text = "Health " + str(player.current_health)
		$Container/Lives.text = "Lives " + str(Global.playerlives)
