# scripts/actors/Enemy.gd
extends CharacterBody2D

@export var health: int = 30
@export var damage: int = 10
@export var experience_value: int = 20
@export var move_speed: float = 150.0

@onready var player = get_tree().get_first_node_in_group("player")

var is_dead: bool = false

func _ready():
    add_to_group("enemies")

func _physics_process(delta):
    if is_dead or player == null:
        return

    var direction = (player.global_position - global_position).normalized()
    velocity = direction * move_speed
    move_and_slide()

func take_damage(damage_amount: int):
    health -= damage_amount
    if health <= 0:
        die()

func die():
    is_dead = true
    GameEvents.emit_signal("enemy_died", self, experience_value)
    queue_free()

func _on_attack_area_body_entered(body):
    if body.has_method("take_damage"):
        body.take_damage(damage)