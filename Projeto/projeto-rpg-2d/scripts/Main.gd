# scripts/Main.gd - Anexe este script à cena Main
extends Node2D

func _ready():
	# Adicionar GameEvents
	var game_events = Node.new()
	game_events.name = "GameEvents"
	game_events.set_script(load("res://scripts/systems/GameEvents.gd"))
	add_child(game_events)

	# Adicionar World
	var world = Node2D.new()
	world.name = "World"
	world.set_script(load("res://scripts/levels/World.gd"))
	add_child(world)

	# Adicionar HUD
	var hud = CanvasLayer.new()
	hud.name = "HUD"
	hud.set_script(load("res://scripts/ui/HUD.gd"))
	add_child(hud)
