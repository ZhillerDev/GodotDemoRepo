extends CanvasLayer

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/level_1.tscn")

func _on_level_pressed() -> void:
	get_tree().change_scene_to_file("res://ui/level_select.tscn")

func _on_exit_pressed() -> void:
	get_tree().quit()
