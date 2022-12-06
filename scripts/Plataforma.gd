extends Node2D

onready var Moeda = preload("res://cenas/Moeda.tscn")
var cair = false
const Velocidade_Plataforma = -180
const Velocidade_Queda = 200

func _ready():
	randomize()
	
func criar_plataforma(celulas):
	$TileMap.set_cell(0,0,0)
	
	for celula in celulas:
			$TileMap.set_cell(celula + 1,0,1)
	
	$TileMap.set_cell(celulas + 1 ,0,2)


func _physics_process(delta):
	
	if cair: 
		position.y +=Velocidade_Queda * delta
	
	position.x += Velocidade_Plataforma * delta 

func criar_moedas(celulas):
	var instancia_moeda = Moeda.instance()
	var posicao_x = randi() % int(celulas + 2)
	instancia_moeda.position = Vector2(posicao_x * 26 + 3, -30)
	add_child(instancia_moeda)


func _on_Timer_timeout():
	cair = true
	
func derruba_plataforma():
	$Timer.start()
	$TileMap.modulate = Color(0.7,1.0,1.0)
