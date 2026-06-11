extends Node

var sfx = {
	"successful_pop": preload("res://sounds/bubble_pop_sound.mp3"),
	"failed_pop": preload("res://sounds/failed_pop_sound.mp3"),
	"click": preload("res://sounds/click_sound.mp3"),
	"multi_pop": preload("res://sounds/multi_pop.mp3")
}

func play_sfx(sfx_name: String, combo: int = 0):
	if not sfx.has(sfx_name):
		return

	var p = AudioStreamPlayer2D.new()
	p.stream = sfx[sfx_name]

	if sfx_name == "multi_pop":
		var clamped_combo = clamp(combo, 0, 7)
		var pitch = 1.0 + clamped_combo * 0.5 
		p.pitch_scale = pitch

	add_child(p)
	p.play()
	p.connect("finished", p.queue_free)
