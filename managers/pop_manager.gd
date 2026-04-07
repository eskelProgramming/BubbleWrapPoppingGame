extends Node

var pop_chance: float = 1
var sheet_bubbles: int
var num_popped: int
var num_good_pops: int

func pop_bonus() -> float:
	var percent_popped = 1.0 * num_good_pops / sheet_bubbles
	if percent_popped == 1:
		return 2.0
	elif percent_popped >= .75:
		return 1.5
	elif percent_popped >= .25:
		return 1
	else:
		return .5

func check_pops():
	if num_popped >= sheet_bubbles:
		ScoreManager.calc_views()
