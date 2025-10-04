# GameManager.gd (configurando como autoload)

extends Node

signal game_paused
signal game_resumed

var current_score: int = 0
var is_paused: bool = false

static func get_mananger() -> Node:
    return Engine.get_main_loop().root.get_node("GameMamanger")

func add_score(points: int):
    current_score += points

func toggle_pause():
    is_paused = !is_paused
    get_tree().paused = is_paused

    if is_paused:
        game_paused.emit()
    else:
        game_resumed.emit()

