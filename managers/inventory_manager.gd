extends Node

var inventory: Array[Object]

func add_item(item):
	if item in BraceletManager.all_bracelets: 
		BraceletManager.add_bracelet(item)
		
	inventory.append(item)
