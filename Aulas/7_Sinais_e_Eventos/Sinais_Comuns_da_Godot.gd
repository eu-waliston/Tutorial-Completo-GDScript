extends Node

# Timer timeout
func _ready():
    $Timer.timeout.connect(_on_timer_timeout)
    $Areas2D.body_entered.connect(_on_body_entered)
    $Areas2D.area_entered.connect(_on_area_entered)

func _on_timer_timeout():
    print("Timer completou!")

func _on_body_entered(body: Node):
    print("Corpo entrou: ", body.name)

func _on_area_entered(area: Area2D):
    print("Área entrou: ", area.name)