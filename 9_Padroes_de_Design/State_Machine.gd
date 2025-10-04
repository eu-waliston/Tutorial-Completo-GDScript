class_name StateMachine

extends Node

var current_state: Node = null
var states: Dictionary = {}

func _ready():
    # Coleta todos os estados filhos
    for child in get_children():
        if child is State:
            states[child.name] = child
            child.state_machine = self

    # Define estado inicial
    if states.size() > 0:
        change_state(states.values()[0].name)

func change_state(state_name: String):
    if current_state:
        current_state.exit()

    if state_name in states:
        current_state = states[state_name]
        current_state.enter()

func _process(delta: float):
    if current_state:
        current_state.update(delta)

# Classe base para estados
class State:
    extends Node
    var state_machine: StateMachine = null

    func enter():
        pass

    func exit():
        pass

    func update(delta: float):
        pass