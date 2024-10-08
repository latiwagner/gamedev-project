extends Node2D

const BULLET = preload("res://scenes/bullet.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var mouse_pos = get_global_mouse_position()
	look_at(mouse_pos)
	
	if Input.is_action_just_pressed("fire"):
		var new_bullet = BULLET.instantiate()
		new_bullet.global_position = %shootingPoint.global_position
		new_bullet.global_rotation = %shootingPoint.global_rotation
		%shootingPoint.add_child(new_bullet)
