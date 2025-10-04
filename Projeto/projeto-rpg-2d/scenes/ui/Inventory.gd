# scripts/ui/Inventory.gd
extends CanvasLayer

class_name Inventory

@onready var grid_container = $Panel/MarginContainer/GridContainer
@onready var item_scene = preload("res://scenes/ui/InventoryItem.tscn")

var items: Array = []
var max_slots: int = 20

func _ready():
    initialize_inventory()

func initialize_inventory():
    for i in range(max_slots):
        var slot = item_scene.instantiate()
        grid_container.add_child(slot)

func add_item(item_data: Dictionary):
    if items.size() < max_slots:
        items.append(item_data)
        update_display()
        GameEvents.emit_signal("inventory_changed")

func remove_item(item_index: int):
    if item_index < items.size():
        items.remove_at(item_index)
        update_display()
        GameEvents.emit_signal("inventory_changed")

func update_display():
    for i in range(max_slots):
        var slot = grid_container.get_child(i)
        if i < items.size():
            slot.display_item(items[i])
        else:
            slot.clear_slot()