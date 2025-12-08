extends RigidBody3D


func _on_body_entered(body: Node) -> void:
	print(body)
	
func push_object(player):
	apply_impulse(-player.basis.z + 5.0)
