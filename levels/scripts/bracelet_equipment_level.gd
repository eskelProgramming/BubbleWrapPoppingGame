extends Level

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var temp_bracelet_inventory = BraceletManager.bracelet_inventory
	for item_spot: ItemSpot in get_tree().get_nodes_in_group("bracelet_spots"):
		var item = temp_bracelet_inventory.pop_front()
		item_spot.set_item(item)



func _on_button_pressed() -> void:
	LevelManager.load_level(0)
