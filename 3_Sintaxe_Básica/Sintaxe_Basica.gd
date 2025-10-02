# Comentario de 1 linha

"""
Comenntario
Multilinha

"""

extends Node # Herda de Node

# Variaveis globais do script
var player_name = "João"
var health = 100
var is_alive = true

# Contantes
const MAX_HEALTH = 100
const GRAVITY = 9.8

# Função de inicialização
func _ready():
    print("Script carregado!")
