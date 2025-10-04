# if/elif/else
func check_health(health: int):
    if health <= 0:
        print("Player Morreu!")
    elif health < 30:
        print("Saude baixa!")
    else:
        print("Saúde OK!")

# switch/math (GDSScript 2.0+)
func handle_input(input: String):
    match input:
        "jump":
            jump()
        "attack":
            attack()
        "defend":
            defend()
        _:
            print("Comando Desconhecido")