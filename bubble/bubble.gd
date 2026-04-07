class_name Bubble
extends Button

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _on_pressed() -> void:
	animated_sprite_2d.play("popped")
	audio_stream_player_2d.play()
