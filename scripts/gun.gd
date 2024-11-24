extends Node2D

const BULLET = preload("res://scenes/bullet.tscn")
@onready var pivot: Marker2D = $pivot
@onready var sprite_2d: Sprite2D = $pivot/Sprite2D
@onready var attack_speed: Timer = $attackSpeed
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var empty_sound: AudioStreamPlayer2D = $sounds/emptySound
@export var direction = -1
@export var max_ammo = 12
@export var current_ammo = max_ammo


var reloading = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	var mouse_pos = get_global_mouse_position()
	direction = mouse_pos.x - pivot.global_position.x
	look_at(mouse_pos)
	
	if Input.is_action_pressed("fire") and attack_speed.is_stopped() and current_ammo != 0 and !reloading:
		var new_bullet = BULLET.instantiate()
		new_bullet.global_position = %shootingPoint.global_position
		new_bullet.global_rotation = %shootingPoint.global_rotation
		%shootingPoint.add_child(new_bullet)
		animation_player.play("fire")
		attack_speed.start()
		current_ammo -= 1
	elif Input.is_action_pressed("fire") and attack_speed.is_stopped() and current_ammo == 0 and !reloading:
		empty_sound.play()
		attack_speed.start()
		
	if Input.is_action_pressed("reload") and current_ammo != max_ammo:
		reloading = true
		animation_player.play("reload")
		
		
	if direction < 0:
		sprite_2d.scale.y = -1;
	if direction > 0:
		sprite_2d.scale.y = 1;

func _reload_end():
	animation_player.stop()
	current_ammo = max_ammo
	reloading = false
