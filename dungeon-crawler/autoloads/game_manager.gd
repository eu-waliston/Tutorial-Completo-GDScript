# game_manager.gd (Autoload)
extends Node

signal game_started
signal game_paused
signal game_resumed
signal player_died
signal level_completed

var current_level: int = 1
var player_score: int = 0
var is_game_paused: bool = false

func _ready():
    print("GameManager carregado!")

func add_score(points: int):
    player_score += points
    print("Pontuação: ", player_score)

func toggle_pause():
    is_game_paused = !is_game_paused
    get_tree().paused = is_game_paused

    if is_game_paused:
        game_paused.emit()
    else:
        game_resumed.emit()