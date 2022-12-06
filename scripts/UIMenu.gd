extends Control

func _ready():
	GameData.criar_arquivo()
	
	if GameData.pega_valor("telacheia")==1:
		OS.window_fullscreen = true
	
	if GameData.pega_valor("musica")==1:
		$AudioHUB.play()
	
	print("hola")
func _on_ButtonJogar_pressed():
	get_tree().change_scene("res://cenas/Endless Run.tscn")


func _on_ButtonSair_pressed():
	get_tree().quit() 

func _on_ButtonConfiguracao_pressed():
	get_tree().change_scene("res://cenas/UIConfiguracoes.tscn")


func _on_ButtonCreditos_pressed():
	get_tree().change_scene("res://cenas/UICreditos.tscn")
