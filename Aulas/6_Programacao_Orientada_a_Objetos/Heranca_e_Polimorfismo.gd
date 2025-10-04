# classe base
class_name Enemy

extends CharacterBody2D

var heatlh: int = 100

func take_damage(amout: int):
    heatlh -= amout
    if heatlh <= 0:
        die()

func die():
    print("Inimigo base morreu")

# Classe derivada
class_name Zombie
extends Enemy

var attack_power:int = 10

# Override do método die
func die():
    print("Zumbi morreu e dropa item!")
    spawn_lost()
    super.die() #Chama o método da classe pai

func spawn_loot():
    print("Iem dropado!")