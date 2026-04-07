## Manages loading and unloading levels. 
##
## Keeps track of the [LevelData] for each [Level]. 

# inherits from [Node]
extends Node

## The [LevelData] for each level.
var levels : Array[LevelData]
## The main scene that all levels are attached to. 
var main_scene : Node = null
## The currently loaded [Level]
var loaded_level : Level = null
## The previously loaded [Level]
var last_level: Level = null
## The main menu
var main_menu: CanvasLayer = null

## Unloads the [member loaded_level]. 
func unload_level() -> void: 
	if is_instance_valid(loaded_level):
		loaded_level.queue_free()
	
	loaded_level = null

## Loads a [Level] using [param level_id].
func load_level(level_id : int) -> void:
	unload_level()
	
	var level_data = get_level_data_by_id(level_id)
	
	if not level_data:
		return
		
	var level_path = "res://levels/scenes/%s.tscn" % level_data.level_path
	var level_res := load(level_path)
	
	if level_res:
		loaded_level = level_res.instantiate()
		main_scene.add_child(loaded_level)
	else:
		print("level does not exist")

## Gets a [LevelData] based on [param id].
func get_level_data_by_id(id : int) -> LevelData:
	var level_to_return : LevelData = null
	for lvl : LevelData in levels:
		if lvl.level_id == id:
			level_to_return = lvl
			
	return level_to_return

## Resets all in [member Levels] to defaults. 
func reset_levels() :
	for level in levels:
		level.level_completed = false
		level.level_unlocked = false
	get_level_data_by_id(1).level_unlocked = true

func return_to_main_menu():
	if is_instance_valid(main_menu):
		unload_level()
		main_menu.activate()
