"""

# 1. Evite alocações em loops
func optimized_loop():
    var positions: PackedVector2Array = []
    positions.resize(1000)

    for i in range(1000):
        positions[i] = Vector2(i, i * 2)

# 2. Use tipagem estática
func calculate_damage(base: float, multiplier: float) -> float:
    return base * multiplier

# 3. Cache de referências
var _animation_player: AnimationPlayer

func _ready():
    _animation_player = $AnimationPlayer

# 4. Use signals em vez de polling


# ❌ Ruim
func _process(delta):
    if Input.is_action_just_pressed("ui_accept"):
        jump()
# ✅ Bom
func _ready():
    Input.connect("ui_accept", _on_jump_input)


func _on_jump_input():
    jump()

"""