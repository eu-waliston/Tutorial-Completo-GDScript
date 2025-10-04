# scripts/utils/DialogueSystem.gd
extends CanvasLayer

@onready var dialogue_label = $Panel/MarginContainer/DialogueLabel
@onready var name_label = $Panel/MarginContainer/NameLabel

var current_dialogue: Array = []
var current_line: int = 0
var is_active: bool = false

func start_dialogue(dialogue: Array, speaker_name: String = ""):
    if is_active:
        return

    current_dialogue = dialogue
    current_line = 0
    is_active = true
    name_label.text = speaker_name
    show()
    show_next_line()

func show_next_line():
    if current_line < current_dialogue.size():
        dialogue_label.text = current_dialogue[current_line]
        current_line += 1
    else:
        end_dialogue()

func end_dialogue():
    is_active = false
    hide()
    current_dialogue = []
    current_line = 0

func _input(event):
    if is_active and event.is_action_pressed("interact"):
        show_next_line()