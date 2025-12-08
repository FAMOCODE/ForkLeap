extends Node3D
@export_category("Camera Settings")
@export_group("Camera Tilt")
@export var debug : bool =false
@export_category("References")
@onready var camera_3d = Camera3D

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
	




@export var component_mouse_capture : MouseCaptureComponent


var _rotation : Vector3

func update_camera_rotation(input: Vector2) -> void:
		rotation.x += input.y
		_rotation.y += input.x
		_rotation.x = clamp(_rotation.x, deg_to_rad(tilt_lower_limit), deg_to_rad(tilt_upper_limit))
		

		var _player_rotation = Vector3 (0.0,_rotation.y,0.0)
		var _camera_rotation = Vector3 (_rotation.x,0.0,0.0)

		transform.basis = Basis.from_euler(_camera_rotation)
		player_controller.update_rotation(_player_rotation)


		rotation.z = 0.0


	
