extends Level

@onready var money_label: RichTextLabel = $Panel/VBoxContainer/Labels/money_label
var money = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for sis: ShopItemSpot in get_tree().get_nodes_in_group("shop_item_spots"):
		for si in ShopManager.shop_items:
			if sis.item_type == si.item_category:
				sis.set_item(si)
			else:
				sis.reset_item()
				
	
	MoneyManager.add_money(ScoreManager.curr_views)
	money = MoneyManager.curr_money
	money_label.text = "Money: %s" % money
	

func _process(delta: float) -> void:
	if MoneyManager.curr_money != money:
		money_label.text = "Money: %s" % MoneyManager.curr_money

func _on_exit_shop_pressed() -> void:
	LevelManager.load_level(0)
