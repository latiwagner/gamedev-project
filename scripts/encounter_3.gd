extends Area2D

@onready var e3_bounce: CharacterBody2D = $"../../Enemies/e3_bounce"
@onready var e3_enemy: CharacterBody2D = $"../../Enemies/e3_enemy"

func _on_body_entered(body: Node2D) -> void:
		e3_enemy.visible = true
		e3_bounce.visible = true
		queue_free()
