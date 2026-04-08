extends Level

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for sis: ShopItemSpot in get_tree().get_nodes_in_group("shop_item_spots"):
		for si in ShopManager.shop_items:
			if sis.item_type == si.item_category:
				sis.set_item(si)
			else:
				sis.reset_item()
	
