extends Level

@onready var final_score_screen: Control = $Camera2D/final_score_screen

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ScoreManager.views > 0:
		final_score_screen.show()
