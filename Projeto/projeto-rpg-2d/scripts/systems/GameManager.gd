extends Node

var player: Node2D = null
var current_level: String = ""
var game_data: Dictionary = {}

func _ready():
    load_game_data()

func save_game():
    var save_data = {
        "player_position": player.global_position if player else Vector2.ZERO,
        "current_level": current_level,
        "timestamp": Time.get_unix_time_from_system()
    }

    var file = FileAccess.open("user://savegame.dat", FileAccess.WRITE)
    file.store_var(save_data)
    file.close()

func load_game_data():
    if FileAccess.file_exists("user://savegame.dat"):
        var file = FileAccess.open("user://savegame.dat", FileAccess.READ)
        game_data = file.get_var()
        file.close()