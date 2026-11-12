class_name ShopItemSpot

extends Control

@onready var image_btn: Button = $HBoxContainer/VBoxContainer2/image_btn
@onready var item_name: RichTextLabel = $HBoxContainer/VBoxContainer/item_name
@onready var item_price: RichTextLabel = $HBoxContainer/VBoxContainer/item_price

@export var item_type: ShopManager.ITEM_TYPES

var si: ShopItem

func set_item(new_si: ShopItem):
	image_btn.icon = load(new_si.image_location)
	item_name.text = new_si.item_name
	item_price.text = str(new_si.base_item_price)
	si = new_si

func reset_item():
	image_btn.icon = null
	item_name.text = ""
	si = null

func _on_image_btn_pressed() -> void:
	image_btn.disabled = true
	if MoneyManager.attempt_spend_money(si.base_item_price):
		InventoryManager.inventory.append(si)
		reset_item()
	else:
		image_btn.disabled = false
