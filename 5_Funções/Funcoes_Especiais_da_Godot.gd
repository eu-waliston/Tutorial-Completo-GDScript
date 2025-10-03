# _ready() - Chamada quando o nó entra na árvore de cena
func _ready():
    print("Nó pronto!")

# _process(delta) - Chamada a cada frame
func _process(delta: float):
    # delta é o tempo desde o último frame
    pass

# _physics_process(delta) - Chamada a cada frame de física
func _physics_process(delta: float):
    # Para física, uso mais consistente de delta
    pass

# _input(event) - Processa entrada de usuário
func _input(event: InputEvent):
    if event is InputEventKey:
        if eventy.prrssed and event.keycode == KEY_SPACE:
            jump()

