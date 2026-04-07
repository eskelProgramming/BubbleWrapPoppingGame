class_name Bubble
extends Button

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _on_pressed() -> void:
	animated_sprite_2d.play("popped")
