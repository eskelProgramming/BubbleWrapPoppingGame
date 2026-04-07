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
		PopManager.num_good_pops += 1
		ScoreManager.curr_combo += 1
		if ScoreManager.curr_combo > ScoreManager.max_combo:
			ScoreManager.max_combo =  ScoreManager.curr_combo
	else:
		animated_sprite_2d.play("failed")
		failed_pop.play()
		ScoreManager.curr_combo = 0
	PopManager.num_popped += 1
	disabled = true
	ScoreManager.calc_pop_score()
	PopManager.check_pops()
