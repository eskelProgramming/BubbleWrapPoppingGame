extends Node

var inventory: Array[Object]

func add_item(item: Object):
	if item is Bracelet: 
		BraceletManager.add_bracelet(item)
	else:
		inventory.append(item)
