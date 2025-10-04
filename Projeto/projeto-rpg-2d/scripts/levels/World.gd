extends Node2D

func _ready():
    spawn_player()

func spawn_player():
    # Primeiro, vamos criar um player básico programaticamente
    var player = CharacterBody2D.new()

    # Adicionar Sprite2D
    var sprite = Sprite2D.new()
    sprite.texture = load("res://icon.svg")  # Usando ícone padrão como placeholder
    player.add_child(sprite)

    # Adicionar CollisionShape2D
    var collision = CollisionShape2D.new()
    collision.shape = RectangleShape2D.new()
    collision.shape.extents = Vector2(16, 16)
    player.add_child(collision)

    # Adicionar script do player
    player.set_script(load("res://scripts/actors/Player.gd"))

    add_child(player)
    player.global_position = Vector2(300, 200)