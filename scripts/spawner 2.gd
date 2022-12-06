extends Node2D

onready var Plataforma = load("res://cenas/Plataforma.tscn")
var posicao_anterior = Vector2.ZERO
var plataforma_inicial = true
var top_down = 0

func _ready():
	randomize()
	sort_plataforma(30)
	
func sort_plataforma(celulas):
	
	var instancia_plataforma = Plataforma.instance()
	
	if plataforma_inicial:
		posicao_anterior = Vector2(0,400)
	else:
		top_down = randi()%6 #valor = 0 ou valor = 1
		print(top_down)
		if top_down == 0 or top_down == 4 or top_down == 2:
			posicao_anterior = Vector2(765, max(180, posicao_anterior.y - 40))
		else:
			posicao_anterior = Vector2(765, min(400,posicao_anterior.y + 40))
		
	instancia_plataforma.position = posicao_anterior
	instancia_plataforma.criar_plataforma(celulas)
	add_child(instancia_plataforma)
	
	var sorteia_queda = randi() % 10
	
	if sorteia_queda > 7 and not plataforma_inicial:
		instancia_plataforma.derruba_plataforma()
		
	if plataforma_inicial: 
		plataforma_inicial = false
	else:
		instancia_plataforma.criar_moedas(celulas)

func _on_Timer_timeout():
	
	var celulas = rand_range(1,5)

	sort_plataforma(celulas)
