extends StaticBody2D


func _on_stomp_detector_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D and body.has_signal("stomped"):
		if not body.stomped.is_connected(_on_player_stomped):
			body.stomped.connect(_on_player_stomped)
			

func _on_player_stomped() -> void:
	print("Player stomped! Destroying box.")
	queue_free()
