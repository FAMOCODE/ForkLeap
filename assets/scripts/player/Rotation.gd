extends RigidBody3D
@onready var camera_3d = Camera3D

var gravity = ProjectSettings.get_setting("physics/jolt_physics_3d/joints/world_node")

const Camera_Sens = 0.005

func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	
func _input(event):
	if event.is_action_pressed("quit"): get_tree().quit()

	if event is InputEventMouseMotion:
		rotation.y -= event.relative.x * Camera_Sens
		rotation.x -= event.relative.y * Camera_Sens
		rotation.x = clampf(rotation.x, deg_to_rad(0), deg_to_rad(0))
		rotation.y = clampf(rotation.y, deg_to_rad(0), deg_to_rad(0))
		rotation.z = (0.0)
	
