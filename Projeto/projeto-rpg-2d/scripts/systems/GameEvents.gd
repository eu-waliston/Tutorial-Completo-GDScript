# scripts/systems/GameEvents.gd
extends Node

signal player_health_changed(current_health, max_health)
signal player_mana_changed(current_mana, max_mana)
signal player_died
signal enemy_died(enemy, experience)
signal quest_completed(quest_id)
signal inventory_changed

static func emit_signal(signal_name: String, args = null):
    if args == null:
        get_instance().emit_signal(signal_name)
    else:
        get_instance().emit_signal(signal_name, args)

static func get_instance() -> Node:
    return Engine.get_main_loop().root.get_node("GameEvents")

func _ready():
    if get_parent() == get_tree().root:
        name = "GameEvents"