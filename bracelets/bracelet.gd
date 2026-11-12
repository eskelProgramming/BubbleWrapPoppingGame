class_name Bracelet

extends Node

@export_file() var image_location: String
@export var pop_chance: float = 1.0
@export var score_multi: float = 1.0
@export var store_discount: float = 1.0
@export var rarity: RARITY = RARITY.COMMON
@export_multiline var description: String

enum RARITY {COMMON, UNCOMMON, RARE, EPIC, GOD}
