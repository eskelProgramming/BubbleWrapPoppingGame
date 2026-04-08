extends Control

@onready var total_score: RichTextLabel = $Panel/VBoxContainer/total_score
@onready var num_views: RichTextLabel = $Panel/VBoxContainer/num_views
@onready var max_combo: RichTextLabel = $Panel/VBoxContainer/max_combo

func _ready() -> void:
	self.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ScoreManager.views != 0:
		total_score.text = "Total Score: %s" % ScoreManager.total_score
		max_combo.text = "Max Combo: %s" % ScoreManager.max_combo
		num_views.text = "Total Views: %s" % ScoreManager.views


func _on_button_pressed() -> void:
	LevelManager.load_level(1)
