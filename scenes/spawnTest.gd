extends Area2D

@onready var enemy: CharacterBody2D = $"../Enemies/enemy"
@onready var bounce_enemy: CharacterBody2D = $"../Enemies/bounceEnemy"

func _on_body_entered(_body: Node2D) -> void:
	print("test")
	enemy.visible = true
	queue_free()
