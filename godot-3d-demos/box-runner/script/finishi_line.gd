extends Node3D

class_name FinishLine

signal level_win

func _on_area_3d_body_entered(body: Node3D) -> void:
	level_win.emit()
