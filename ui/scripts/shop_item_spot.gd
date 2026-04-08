class_name ShopItemSpot

extends Control

@onready var image_btn: Button = $VBoxContainer/image_btn
@onready var item_name: RichTextLabel = $VBoxContainer/item_name


@export var item_type: ShopManager.ITEM_TYPES

var si: ShopItem

func set_item(new_si: ShopItem):
	pass
	image_btn.icon = load(new_si.image_location)
	item_name.text = new_si.item_name
	si = new_si

func reset_item():
	image_btn.icon = null
	item_name.text = ""
	si = null

func _on_image_btn_pressed() -> void:
	image_btn.disabled = true
	InventoryManager.inventory.append(si)
	reset_item()
