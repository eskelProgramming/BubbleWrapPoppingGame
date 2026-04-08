extends Control

@onready var score: RichTextLabel = $score
@onready var combo: RichTextLabel = $combo

var curr_score: int = 0
var curr_combo: int = 0

func _process(delta: float) -> void:
	if ScoreManager.total_score != curr_score:
		curr_score = ScoreManager.total_score
		score.text = "Score: %s" % curr_score
	
	if ScoreManager.curr_combo != curr_combo:
		curr_combo = ScoreManager.curr_combo
		combo.text = "Combo: %s" % curr_combo
