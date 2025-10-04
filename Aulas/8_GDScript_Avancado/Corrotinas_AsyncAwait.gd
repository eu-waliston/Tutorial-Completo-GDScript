"""
# Usando await
func wait_and_do_something():
    print("Iniciando...")
    await get_tree().create_timer(2.0).timeout
    print("2 segundos depois!")

# Corrotina complexa

async func sequence_attack():
    print("Processando ataque....")
    await get_tree().create_timer(1.0).timeout

    print("Primeiro golpe")
    await get_tree().create_timer(0.5).timeout

    print("Segundo golpe")
    await get_tree().create_timer(0.5).timeout

    print("Primeiro golpe")


# Chamando corrotinas
func _ready():
    sequence_attack()


"""