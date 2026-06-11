extends Level

@onready var final_score_screen: Control = $Camera2D/final_score_screen
@onready var sheet_spawn: Node2D = $Camera2D/sheet_spawn

func _ready() -> void:
	final_score_screen.hide()
	ScoreManager.reset_scores()
	PopManager.reset_pops()
	clear_sheet()
	set_sheet()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if PopManager.num_popped >= PopManager.sheet_bubbles:
		final_score_screen.show()

func set_sheet():
	while !InventoryManager.inventory.is_empty():
		var sheet = InventoryManager.inventory.pop_front()
		if sheet.item_category == ShopManager.ITEM_TYPES.NORMAL_SHEET:
			var sheet_res := load(sheet.path)
			var loaded_sheet = sheet_res.instantiate()
			sheet_spawn.add_child(loaded_sheet)
		
	if sheet_spawn.get_child_count() <= 0:
		var sheet_res := load("res://bubble_sheets/scenes/mini_sheet.tscn")
		var sheet = sheet_res.instantiate()
		sheet_spawn.add_child(sheet)

func clear_sheet():
	if sheet_spawn.get_child_count() > 0:
		sheet_spawn.remove_child(sheet_spawn.get_child(0))
