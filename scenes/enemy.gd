extends CharacterBody2D

var health = 4

@onready var player: CharacterBody2D = $"../player"

func _physics_process(_delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * 85
	move_and_slide()

func take_damage():
	health -= 1 
	
	if health <= 0:
		queue_free()
