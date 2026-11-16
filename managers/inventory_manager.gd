extends Node

var inventory: Array[String]

func add_item(item):
	if item in BraceletManager.all_bracelets: 
		BraceletManager.add_bracelet(item)
		
	inventory.append(item)
