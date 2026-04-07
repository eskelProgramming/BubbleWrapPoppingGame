extends CanvasLayer

func _on_start_btn_pressed() -> void:
	LevelManager.load_level(0)
	deactivate()

func _on_exit_btn_pressed() -> void:
	get_tree().quit()

## Hides the main menu and sets necessary processes to false. 
func deactivate() -> void:
	hide()
	set_process(false)
	set_physics_process(false)
	set_process_unhandled_input(false)
	set_process_input(false)

## Shows the main menu and sets necessary processes to true. 
func activate() -> void:
	show()
	set_process(true)
	set_physics_process(true)
	set_process_unhandled_input(true)
	set_process_input(true)
