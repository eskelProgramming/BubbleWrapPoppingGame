class_name Bracelet

extends Node

var image_location: String
var pop_chance: float = 1.0
var score_multi: float = 1.0
var store_discount: float = 1.0
var rarity: RARITY = RARITY.COMMON
var description: String

@onready var sprite_2d: Sprite2D = $Sprite2D

enum RARITY {COMMON, UNCOMMON, RARE, EPIC, GOD}

func _ready():
	sprite_2d.texture = load(image_location)

func _init(image_location: String, pop_chance: float, score_multi: float, store_discount: float, rarity: RARITY, description):
	self.image_location = image_location
	self.pop_chance = pop_chance
	self.score_multi = score_multi
	self.store_discount = store_discount
	self.rarity = rarity
