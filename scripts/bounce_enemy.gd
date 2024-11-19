extends CharacterBody2D

var health = 4
var max_velocity = 230
@export var start_velocity = Vector2(100, 100)

func _ready():
	set_velocity(start_velocity)

func _physics_process(delta):
	if visible == true:
		var collision_info = move_and_collide(velocity * delta)
		if collision_info:
			velocity = velocity.bounce(collision_info.get_normal())
			velocity.x = min(velocity.x * 1.07, max_velocity)
			velocity.y = min(velocity.y * 1.07, max_velocity)

func take_damage():
	if visible == true:
		health -= 1 
	
	if health <= 0:
		queue_free()
