extends Control

func _ready():
	
	if GameData.pega_valor("musica")==1:
		$AudioCreditos.play()
	
	

func _on_ButtonVoltar_pressed():
	get_tree().change_scene("res://cenas/UIMenu.tscn")
