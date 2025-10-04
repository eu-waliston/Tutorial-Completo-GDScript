# main.gd (Cena Principal)
extends Node2D

func _ready():
    print("🎮 Dungeon Crawler iniciado!")
    GameManager.game_started.emit()