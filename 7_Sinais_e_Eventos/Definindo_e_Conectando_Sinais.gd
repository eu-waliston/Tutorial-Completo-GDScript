# Definindo sinais personalizados

signal health_changed(old_health, new_health)
signal player_died
signal item_detected(item_name, value)

# Emitindo snais

func take_damage(amount: int):
    var old_health = health
    health -= amount

    if health <= 0:
        emit_signal("Player_died")

# Conectando sinais (no _ready ou onde necessário)
func _ready():
    # Conectar usando código
    health_changed.connect(_on_health_changed)
    player_died.connect(_on_player_died)

    # Ou conectar ao sinal de outro nó
    var enemy = $Enemy
    enemy.enemy_died.connect(_on_enemy_died)

# Funcções de callback

func _on_health_changed(old_health, new_health):
    print("Heatlh changed from", old_health, "to", new_health)

func _on_player_died():
    print("Game Over!")

func _on_enemy_died():
    print("Enemy defetead!")


