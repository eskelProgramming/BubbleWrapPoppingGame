class_name Bubble
extends Button

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var pop: AudioStreamPlayer2D = $pop
@onready var failed_pop: AudioStreamPlayer2D = $failed_pop


func check_pop():
	return randf() <= PopManager.pop_chance
	
func _on_pressed() -> void:
	if check_pop(): 
		animated_sprite_2d.play("popped")
		pop.play()
	else:
		animated_sprite_2d.play("failed")
		failed_pop.play()
