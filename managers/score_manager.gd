extends Node

var curr_combo: int = 0
var max_combo: int = 0
var total_score: int
var views: int
var max_views: int

func calc_pop_score():
	var score = (1 if curr_combo > 0 else 0) * curr_combo
	total_score += score
	print("score %s" % score)

func calc_views():
	views = total_score * max_combo * PopManager.pop_bonus() / 5.0
	print("max_combo %s" % max_combo)
	print("total_score %s" % total_score)
	print("views %s" % views)
