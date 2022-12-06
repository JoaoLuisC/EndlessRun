extends Area2D

func _ready():
	$AnimatedSprite.play("Padrão")

func _on_Moeda_body_entered(body):
	
	if body is Personagem:
		$AnimatedSprite.play("Final")
		body.pontuacao()


func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == "Final":
		queue_free()
