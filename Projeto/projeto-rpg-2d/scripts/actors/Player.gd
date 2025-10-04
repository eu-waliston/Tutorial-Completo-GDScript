extends CharacterBody2D

@export var speed: float = 300.0
@export var health: int = 100

@onready var animation_player = $AnimationPlayer
@onready var sprite = $Sprite2D

func _ready():
    add_to_group("player")

func _physics_process(delta):
    var input_vector = Vector2.ZERO
    input_vector.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
    input_vector.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
    input_vector = input_vector.normalized()

    velocity = input_vector * speed

    if input_vector != Vector2.ZERO:
        animation_player.play("walk")
        if input_vector.x != 0:
            sprite.flip_h = input_vector.x < 0
    else:
        animation_player.play("idle")

    move_and_slide()

func take_damage(amount: int):
    health -= amount
    print("Player health: ", health)
    if health <= 0:
        die()

func die():
    print("Player died!")
    queue_free()