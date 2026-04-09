extends Node

var sfx = {
	"successful_pop": preload("res://sounds/bubble_pop_sound.mp3"),
	"failed_pop": preload("res://sounds/failed_pop_sound.mp3"),
	"click": preload("res://sounds/click_sound.mp3")
}

func play_sfx(sfx_name: String):
	if not sfx.has(sfx_name):
		return
	var p = AudioStreamPlayer2D.new()
	p.stream = sfx[sfx_name]
	add_child(p)
	p.play()
	p.connect("finished", p.queue_free)
