class_name Personagem 

extends KinematicBody2D

const GRAVIDADE = 600
const PULO = -350
var velocidade = Vector2.ZERO*1.5
var pontos = 0 
func _physics_process(delta):
	velocidade.y += GRAVIDADE * delta
	
	if is_on_floor():
		$AnimatedSprite.play("Run")
		if Input.is_action_just_pressed("pular"):
			velocidade.y = PULO
			if GameData.pega_valor("sons") == 1:
				$AudioPulo.play()
	else:
		if velocidade.y > 0:
			$AnimatedSprite.play("Jump_End")
		else:
			$AnimatedSprite.play("Jum_Start")

	velocidade = move_and_slide(velocidade,Vector2.UP)
	
func pontuacao():
	if GameData.pega_valor("sons") == 1:
				$AudioMoeda.play()

	pontos+= 1
	get_parent().find_node("Hud").altera_pontuacao(pontos)
	
func game_over():
	var recorde = GameData.pega_valor("recorde")
	
	GameData.altera_valor("ultima_pontuacao",pontos)
	
	
	if pontos > recorde:
		GameData.altera_valor("recorde", pontos)
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
