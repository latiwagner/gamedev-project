extends CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var hurt_sound: AudioStreamPlayer2D = $sounds/hurtSound
@onready var animation_player: AnimationPlayer = $AnimationPlayer

var health = 5
var max_velocity = 180
@export var start_velocity = Vector2(85, 85)

func _ready():
	animated_sprite_2d.play("idle")
	set_velocity(start_velocity)

func _physics_process(delta):
	if visible == true:
		var collision_info = move_and_collide(velocity * delta)
		if collision_info:
			velocity = velocity.bounce(collision_info.get_normal())
			velocity.x = min(velocity.x * 1.06, max_velocity)
			velocity.y = min(velocity.y * 1.06, max_velocity)

func take_damage():
	if visible == true:
		health -= 1 
		animated_sprite_2d.play("hurt")
		hurt_sound.play()
	
	if health <= 0:
		animation_player.play("death")
