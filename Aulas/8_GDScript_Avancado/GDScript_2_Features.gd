# Annotations
signal health_changed
@export var player_speed: float = 300.0
@export_range(0,100) var initial_health: int = 100
@export_group("Weapon Setting")
@export_subgroup("Damage")
@export var damage: int = 10

# Properties customizadas
var _health: int = 100

@export var health: int:
    get:
        return _health
    set(value):
        _health = clamp(value,0,100)
        health_changed.emit()

# Static functions
static func calculate_distance(a: Vector2, b: Vector2) -> float:
    return a.distance_to(b)
