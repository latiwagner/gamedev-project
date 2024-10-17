extends Node2D

const BULLET = preload("res://scenes/bullet.tscn")
@onready var pivot: Marker2D = $pivot
@onready var sprite_2d: Sprite2D = $pivot/Sprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	var mouse_pos = get_global_mouse_position()
	var direction = pivot.global_position.x - mouse_pos.x
	look_at(mouse_pos)
	
	if Input.is_action_just_pressed("fire"):
		var new_bullet = BULLET.instantiate()
		new_bullet.global_position = %shootingPoint.global_position
		new_bullet.global_rotation = %shootingPoint.global_rotation
		%shootingPoint.add_child(new_bullet)
		
	if direction > 0:
		sprite_2d.flip_v = true;
	if direction < 0:
		sprite_2d.flip_v = false;
