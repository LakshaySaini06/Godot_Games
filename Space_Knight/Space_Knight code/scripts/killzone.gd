extends Area2D

@onready var timer = $Timer
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _on_body_entered(body):
	print("You died!")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start()
	audio_stream_player_2d.play()


func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
