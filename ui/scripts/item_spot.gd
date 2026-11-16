class_name ItemSpot

extends Control

@onready var image_button: Button = $VBoxContainer/Button
@onready var label: RichTextLabel = $VBoxContainer/label


var item: Object

func set_item(item: Object):
	self.item = item
	image_button.icon = load(item.image_location)
	label.text = item.item_name


func _on_button_pressed() -> void:
	item.equipped = !item.equipped
	print(item.equipped)
