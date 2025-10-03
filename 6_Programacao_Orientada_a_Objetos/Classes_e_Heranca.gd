# Definindo uma classe

class_name Player

extends CharacterBody2D

#Propriedades
var heatlh: int = 100
var speed: int = 200
var is_jumping: bool = false

#Constructor
func _init():
    print("Player criado!")

#metodos
func take_damage(amout: int):
    heatlh -= amout
    if heatlh <= 0:
        die()

func die():
    print("Player morreu!")
    queue_free() #remove o nó da cena