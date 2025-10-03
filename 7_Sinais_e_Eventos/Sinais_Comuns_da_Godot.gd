# Timer timeout
func _ready():
    $Timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout():
    print("Timer completou!")

# Areas2D signals
func _ready():
    $Areas2D.body_entered.conect(_on_body_entered)
    $Areas2D.area_entered.conect(_on_area_entered)

func _on_body_entered(body: Node):
    print("Corpo entrou: ", body.name)

func _on_area_entered(area: Area2D)