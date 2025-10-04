# Função básica

func say_hello():
    print("Hello!")

# Função com parâmetros

func calculate_damage(base_damage: float, multiplier: float) -> float:
    return base_damage * multiplier

# Função com parâmetros opcionais

func spawn_enemy(type: String = "normal", count: int = 1):
    for i in range(count):
        print("Spawning " + type + " enemy")

# Função com parâmetros nomeados

func configure_weapon(damage: int, speed: float, range: int = 100):
    print("Weapon configured: ", damage, speed, range)