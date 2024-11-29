extends Node

class_name PlayerHUD

@onready var label = $CenterContainer/Timer
@onready var win_pause = $WinPause
@onready var fail_pause = $FailPause

var time_passed = 0
var is_time_stopped = false

func _process(delta):
	if !is_time_stopped:
		time_passed += delta
		label.text = "%.2f" % time_passed

func on_level_finished():
	win_pause.visible = true
	is_time_stopped = true

func _on_next_pressed() -> void:
	get_tree().change_scene_to_file("res://ui/level_select.tscn")

func _on_remake_pressed() -> void:
	match LevelManager.current_level:
		1: get_tree().change_scene_to_file("res://scene/level_1.tscn")
		2: get_tree().change_scene_to_file("res://scene/level_2.tscn")
		_: pass
