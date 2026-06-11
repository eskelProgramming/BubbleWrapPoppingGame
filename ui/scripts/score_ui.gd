extends Control

@onready var score: RichTextLabel = $score
@onready var combo: RichTextLabel = $combo

var level_score: int = 0
var level_combo: int = 0

func _process(delta: float) -> void:
	if ScoreManager.curr_score != level_score:
		level_score = ScoreManager.curr_score
		score.text = "Score: %s" % level_score
	
	if ScoreManager.curr_combo != level_combo:
		level_combo = ScoreManager.curr_combo
		combo.text = "Combo: %s" % level_combo
