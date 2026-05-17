extends Level

@onready var final_score_screen: Control = $Camera2D/final_score_screen

func _ready() -> void:
	final_score_screen.hide()
	ScoreManager.reset_scores()
	PopManager.reset_pops()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ScoreManager.curr_views > 0:
		final_score_screen.show()
