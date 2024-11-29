extends CanvasLayer

@onready var btn_container = %BtnContainer

func _ready():
	var max_level = LevelManager.get_max_level()
	var buttons = btn_container.get_children()

	for i in max_level:
		if i < buttons.size():
			(buttons[i] as Button).disabled = false


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/level_1.tscn")
	LevelManager.current_level=1


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/level_2.tscn")
	LevelManager.current_level=2


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://ui/main_menu.tscn")
	LevelManager.current_level=0
