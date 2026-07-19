extends Node2D

@export var player_controller : PlayerController
@export var animation_player : AnimationPlayer
@export var sprite : Sprite2D

func _process(delta):
	# flips the character sprite
	if player_controller.direction == 1:
		sprite.flip_h = false
	elif player_controller.direction == -1:
		sprite.flip_h = true
		


	##plays the movement animation
	if abs(player_controller.velocity.x) > 0.0:
		animation_player.play("knight_walk")
	else:
		animation_player.play("knight_idle")
		
	if player_controller.velocity.y != 0.0:
		animation_player.play("knight_jump")	
