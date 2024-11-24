extends CharacterBody2D

var health = 1

@onready var player: CharacterBody2D = $"../../player"
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _physics_process(_delta):
	if visible == true:
		var direction = global_position.direction_to(player.global_position)
		look_at(Vector2(player.global_position.x, player.global_position.y - 10))
		rotation += 45
		velocity = direction * 90
		move_and_slide()

func take_damage():
	if visible == true:
		health -= 1 
	
	if health <= 0:
		animation_player.play("death")
		
