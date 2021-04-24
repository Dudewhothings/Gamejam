extends KinematicBody2D


var gravity = 20
var velocity = Vector2(0,100)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if(is_on_floor()):
		velocity.y = 0
	else:
		velocity.y += gravity
		move_and_slide(velocity,Vector2.UP)
