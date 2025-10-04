extends CanvasLayer

func _ready():
    # Criar UI básica programaticamente
    var panel = Panel.new()
    panel.size = Vector2(200, 60)
    panel.position = Vector2(10, 10)
    add_child(panel)

    var health_label = Label.new()
    health_label.text = "HP: 100/100"
    health_label.position = Vector2(20, 20)
    panel.add_child(health_label)