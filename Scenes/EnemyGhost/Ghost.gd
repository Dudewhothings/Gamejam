extends KinematicBody2D

var player = null

export var speed = 150
export var looking_speed = 25
var line_of_sight = false

export var looking_color = Color(0.455,0.753,0.988,0.25)
export var los_color = Color(0.988,0.753,0.455,0.5)

var points = []
const margin = 1.5

func _ready():
	if get_node_or_null("/root/World/Player_Container/Player") == null:
		print("Player Not Found")
	else:
		print("Player Found")

func _physics_process(_delta):
	var velocity = Vector2.ZERO
	if player == null:
		player = get_node_or_null("/root/World/Player_Container/Player")
	else:
		velocity = position.direction_to(player.position) * speed
		move_and_slide(velocity, Vector2.UP)
		update()

func _on_DamageBox_body_exited(body):
	if body.name == 'Player':
		print("Player hit")
		#queue_free()
