extends Control

func _ready():
	if GameData.pega_valor("musica") == 0:
		$BackgroundConfigs/CheckMusica.pressed = false
	else:
		$BackgroundConfigs/CheckMusica.pressed = true
	
	if GameData.pega_valor("sons") == 0:
		$BackgroundConfigs/CheckSons.pressed = false
	else:
		$BackgroundConfigs/CheckSons.pressed = true
	
	if GameData.pega_valor("telacheia") == 0:
		$BackgroundConfigs/CheckTelaCheia.pressed = false
	else:
		$BackgroundConfigs/CheckTelaCheia.pressed = true
	
	if GameData.pega_valor("musica")==1:
		$AudioConfiguracoes.play()

func _on_ButtonVoltar_pressed():
	get_tree().change_scene("res://cenas/UIMenu.tscn")
	

func _on_CheckMusica_toggled(button_pressed):
	
	if button_pressed == true:
		GameData.altera_valor("musica", 1)
	else:
		GameData.altera_valor("musica", 0)
	


func _on_CheckTelaCheia_toggled(button_pressed):
	
	if button_pressed == true:
		GameData.altera_valor("telacheia", 1)
		OS.window_fullscreen = true
	else:
		GameData.altera_valor("telacheia", 0)
		OS.window_fullscreen = false


func _on_CheckSons_toggled(button_pressed):
	
	if button_pressed == true:
		GameData.altera_valor("sons", 1)
	else:
		GameData.altera_valor("sons", 0)
