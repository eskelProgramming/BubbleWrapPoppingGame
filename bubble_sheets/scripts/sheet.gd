class_name Sheet
extends Node2D

@export var pop_chance: float
@export var total_bubbles: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	PopManager.pop_chance *= pop_chance
	PopManager.sheet_bubbles = total_bubbles
