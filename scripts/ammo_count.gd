extends RichTextLabel

@onready var player: CharacterBody2D = $"../../player"

func _physics_process(_delta: float) -> void:
	text = "[right]" + str(player.gun.current_ammo) + " / " + str(player.gun.max_ammo) + "[right]"
