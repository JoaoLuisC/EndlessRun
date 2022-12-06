extends Control

func _ready():
	$Tabela/LabelPontos.text = str(GameData.pega_valor("ultima_pontuacao"))
	$Tabela/LabelRecorde.text =  str(GameData.pega_valor("recorde"))
	
	if GameData.pega_valor("musica") == 1:
		$AudioGameOver.play()
	
func _on_ButtonMenu_pressed():
	get_tree().change_scene("res://cenas/UIMenu.tscn")


func _on_ButtonJogar_pressed():
	get_tree().change_scene("res://cenas/Endless Run.tscn")


func _on_ButtonSair_pressed():
	get_tree().quit() 
