extends Area2D

@onready var e2_swarm_1: CharacterBody2D = $"../../Enemies/e2_swarm1"
@onready var e2_swarm_2: CharacterBody2D = $"../../Enemies/e2_swarm2"
@onready var e2_swarm_3: CharacterBody2D = $"../../Enemies/e2_swarm3"
@onready var e2_enemy: CharacterBody2D = $"../../Enemies/e2_enemy1"

func _on_body_entered(_body: Node2D) -> void:
	e2_enemy.visible = true
	e2_swarm_1.visible = true
	e2_swarm_2.visible = true
	e2_swarm_3.visible = true
	queue_free()
