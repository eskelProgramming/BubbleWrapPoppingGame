extends Node

var all_bracelets = {
	"Silver Bracelet": Bracelet.new("Silver Bracelet", "res://bracelets/assets/silver_bracelet.png", 1.1, 1.0, 1.0, Bracelet.RARITY.COMMON, "Gives +10% Pop Chance")
}
var bracelet_inventory: Array[Bracelet]

func add_bracelet(bracelet_name: String):
	var bracelet = all_bracelets[bracelet_name]
	bracelet_inventory.append(bracelet)
	print(bracelet)
