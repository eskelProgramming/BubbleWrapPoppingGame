## The main script. 
##
## Prepares all necessary scenes and [LevelData]s. 

extends Node

## An [Array] of [LevelData]. Set in editor. 
@export var available_levels : Array[LevelData]

## The 2DScene to be loaded when the game is launched. 
@onready var _2d_scene: Node = self
@onready var main_menu: CanvasLayer = $main_menu

## Sets [member LevelManager.main_scene] to [member _2d_scene] and
## [member LevelManager.levels] to [member available_levels].
func _ready() -> void:
	LevelManager.main_scene = _2d_scene
	LevelManager.levels = available_levels
	LevelManager.main_menu = main_menu
	seed(12345)
