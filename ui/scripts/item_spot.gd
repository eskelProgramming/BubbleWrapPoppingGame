class_name ItemSpot

extends Control

@onready var image_button: Button = $Button
@onready var label: RichTextLabel = $label

var item: Object

func set_item(item: Object):
	image_button.icon = load(item.image_location)
	label.text = item.item_name
