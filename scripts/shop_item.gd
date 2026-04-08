class_name ShopItem

extends Node

var item_name: String
var item_category: ShopManager.ITEM_TYPES
var base_item_price: int
var image_location: String

func _init(item_name: String, item_category: ShopManager.ITEM_TYPES, 
		base_item_price: int, image_location: String = "res://bubble/assets/bubble.png") -> void:
	self.item_name = item_name
	self.item_category = item_category
	self.base_item_price = base_item_price
	self.image_location = image_location
