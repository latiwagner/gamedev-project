extends Area2D

@onready var e1_enemy: CharacterBody2D = $"../../Enemies/e1_enemy"

func _on_body_entered(_body: Node2D) -> void:
	e1_enemy.visible = true
	queue_free()
