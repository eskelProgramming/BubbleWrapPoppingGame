extends Node

enum ITEM_TYPES {NORMAL_SHEET, HOLIDAY_SHEET, RING, BRACELET, DESK_ITEM}

var shop_items: Array[ShopItem] = [
	ShopItem.new("Small Sheet", ITEM_TYPES.NORMAL_SHEET, 10, "res://bubble_sheets/assets/small_sheet.png")
]
