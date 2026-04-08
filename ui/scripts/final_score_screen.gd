extends Control

@onready var total_score: RichTextLabel = $total_score
@onready var max_combo: RichTextLabel = $max_combo
@onready var num_views: RichTextLabel = $num_views

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	total_score.text = "Total Score: %s" % ScoreManager.total_score
	max_combo.text = "Max Combo: %s" % ScoreManager.max_combo
	num_views.text = "Total Views: %s" % ScoreManager.views
