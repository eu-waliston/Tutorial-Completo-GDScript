class_name BulletPool

extends Node

var bullet_scene: PackedScene = preload("res://Bullet.tscn")
var available_bullets: Array[Node] = []
var in_use_bullets: Array[Node] = []

func get_bullet() -> Node:
    var bullet: Node

    if available_bullets.size() > 0:
        bullet = available_bullets.pop_back()
    else:
        bullet = bullet_scene.instantiate()
        add_child(bullet)

    in_use_bullets.append(bullet)
    bullet.visible = true
    return bullet

func return_bullet(bullet: Node):
    if bullet in in_use_bullets:
        in_use_bullets.erase(bullet)
        available_bullets.append(bullet)
        bullet.visible = false
        bullet.position = Vector2.ZERO