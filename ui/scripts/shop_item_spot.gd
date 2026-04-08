class_name ShopItemSpot

extends Control

@onready var image_btn: Button = $VBoxContainer/image_btn
@onready var item_name: RichTextLabel = $VBoxContainer/item_name


@export var item_type: ShopManager.ITEM_TYPES

var si: ShopItem

func set_item(si: ShopItem):
	pass
	#image_btn.icon = load(si.image_location)
	#item_name.text = si.item_name
	#self.si = si

func reset_item():
	image_btn.icon = null
	item_name.text = ""
	si = null

func _on_image_btn_pressed() -> void:
	image_btn.disabled = true
	InventoryManager.inventory.append(si)
	reset_item()
