extends CharacterBody2D

var health = 4

@onready var player: CharacterBody2D = $"../../player"
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var hurt_sound: AudioStreamPlayer2D = $sounds/hurtSound
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready():
	animated_sprite_2d.play("idle")

func _physics_process(_delta):
	if visible == true:
		var direction = global_position.direction_to(player.global_position)
		velocity = direction * 75
		move_and_slide()

func take_damage():
	if visible == true:
		health -= 1 
		animated_sprite_2d.play("hurt")
		hurt_sound.play()
	
	if health <= 0:
		animation_player.play("death")
		
