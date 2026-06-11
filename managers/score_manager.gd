extends Node

var curr_combo: int = 0
var max_combo: int = 0
var curr_score: int = 0
var total_score: int = 0
var curr_views: int = 0
var total_views: int = 0

func calc_pop_score():
	var score = (1 if curr_combo > 0 else 0) * curr_combo
	curr_score += score
	print("score %s" % score)

func calc_views():
	total_score += curr_score
	curr_views = curr_score * max_combo * PopManager.pop_bonus() / 5.0
	total_views += curr_views
	print("max_combo %s" % max_combo)
	print("curr_score %s" % curr_score)
	print("total_score %s" % total_score)
	print("views %s" % curr_views)
	print("total_views %s" % total_views)
	
func reset_scores():
	curr_score = 0
	curr_views = 0
	curr_combo = 0
	max_combo = 0
