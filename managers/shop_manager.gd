extends Node

enum ITEM_TYPES {NORMAL_SHEET, HOLIDAY_SHEET, RING, BRACELET, DESK_ITEM}

var shop_items: Array[ShopItem] = [
	ShopItem.new("Small Sheet", ITEM_TYPES.NORMAL_SHEET, 10, "res://bubble_sheets/assets/small_sheet.png", "res://bubble_sheets/scenes/small_sheet.tscn"),
	ShopItem.new("Silver Bracelet", ITEM_TYPES.BRACELET, 50, "res://bracelets/silver_bracelet.png", "res://bracelets/silver_bracelet.tscn")
]
