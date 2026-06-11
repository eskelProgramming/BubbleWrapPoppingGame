extends Node


var curr_money = 0
var max_money = 0

func add_money(coins: int):
	curr_money += coins
	max_money = max(curr_money, max_money)

func attempt_spend_money(cost: int):
	if cost > curr_money:
		return false
	else:
		curr_money -= cost
		return true
