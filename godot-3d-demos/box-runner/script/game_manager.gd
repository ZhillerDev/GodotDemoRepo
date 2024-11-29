extends Node

@onready var finish_line = $"../FinishLine" as FinishLine
@onready var player_hud = $"../PlayerHUD" as PlayerHUD

var player: Player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	finish_line.level_win.connect(on_level_win)
	player = get_tree().get_first_node_in_group("player")

func on_level_win():
	player.linear_velocity = Vector3.ZERO
	player.freeze = true
	player_hud.on_level_finished()
	LevelManager.unlock_level(2)
