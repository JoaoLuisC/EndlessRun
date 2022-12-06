extends Node2D

func _ready():
	if GameData.pega_valor("musica")==1:
		$AudioJogo.play()

func _on_GameOverArea_body_entered(body):
	if body is Personagem:
		body.game_over()
		get_tree().change_scene("res://cenas/UIGameOver.tscn")
