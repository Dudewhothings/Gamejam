extends KinematicBody2D

onready var ray = $RayCast2D
var player = null
var playerInRange = false
export var current_health = 5
export var max_health = 5
export var speed = 150
var pVelocity = Vector2.ZERO
var Velocity = Vector2(100,0)
var attack_Ready = true
var overlapping_Player = false

func _ready():
	if get_node_or_null("/root/World/Player_Container/Player") == null:
		print("Player Node Not Found")
	else:
		print("Player Node Found")


func _physics_process(_delta):
	if player == null:
		player = get_node_or_null("/root/World/Player_Container/Player")
	else:
		if(playerInRange == true):
			pVelocity = Vector2(position.direction_to(player.position) * speed)
			
			if(ray.is_colliding()):
				pVelocity.y = -200
			if(pVelocity.x > 0):
				$AnimatedSprite.flip_h = true
				ray.rotation_degrees = 270
				Velocity.x = 100
			else:
				$AnimatedSprite.flip_h = false
				ray.rotation_degrees = 90
				Velocity.x = -100
			
			if(attack_Ready == true and player != null and overlapping_Player == true):
				player.current_health -= 1
				attack_Ready = false
				print(player.current_health)
				
				
			move_and_slide(pVelocity, Vector2.UP)
			update()
		else:
			if(ray.is_colliding()):
				
				Velocity.x *= -1
				if(ray.rotation_degrees == 90):
					ray.rotation_degrees = 270
					$AnimatedSprite.flip_h = true
				else:
					ray.rotation_degrees = 90
					$AnimatedSprite.flip_h = false
			move_and_slide(Velocity, Vector2.UP)


func _on_SearchBox_body_entered(body):
	playerInRange = true
	
func _on_SearchBox_body_exited(body):
	playerInRange = false

func _on_hit_timer_timeout():
	attack_Ready = true

func _on_DamageBox_body_entered(body):
	if body.name == 'Player':
		overlapping_Player = true

func _on_DamageBox_body_exited(body):
	if body.name == 'Player':
		overlapping_Player = false
