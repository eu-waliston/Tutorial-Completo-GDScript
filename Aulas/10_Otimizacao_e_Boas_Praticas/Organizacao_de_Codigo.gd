# Estrutura recomendada de script
class_name PlayerController
extends CharacterBody2D

# === CONSTANTS ===
const MAX_SPEED := 300.0
const JUMP_FORCE := -500.0

# === EXPORTS ===
@export var health := 100
@export_category("Movement")
@export var speed := 200.0

# === PUBLIC VARIABLES ===
var is_alive := true

# === PRIVATE VARIABLES ===
var _is_jumping := false
var _attack_cooldown := 0.0

# === SIGNALS ===
signal health_changed(old_value, new_value)

# === READY/INIT ===
func _ready():
    _initialize_components()

# === PUBLIC METHODS ===
func take_damage(amount: int):
    # Implementação
    pass

func heal(amount: int):
    # Implementação
    pass

# === PRIVATE METHODS ===
func _initialize_components():
    # Setup interno
    pass

func _handle_input():
    # Processamento de input
    pass

func update_cooldowns(delta: float):
    # Atualiza cooldowns internos
    pass

# === VIRTUAL METHODS ===
func _process(delta: float):
    update_cooldowns(delta)

func _physics_process(delta: float):
    _handle_input()