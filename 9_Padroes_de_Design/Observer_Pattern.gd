# EventBus.gd (Autoload)
extends Node

# Eventos do jogo
signal player_damage(amount)
signal enemy_killed(enemy_type, points)
signal level_completed
signal game_over

# Usage em outros scripts:
# EventBus.player_damaged.emit(10)
# EventBus.enemy_killed.connect(_on_enemy_killed)