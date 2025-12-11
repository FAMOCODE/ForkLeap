class_name CameraController extends Node3D

@export var debug : bool =false
@export_category("References")
@export var player_controller : PlayerController
@export var component_mouse_capture : MouseCaptureComponent
@export_category("Camera Settings")
@export_group("Camera Tilt")




var _rotation : Vector3

func _process(_delta: float) -> void:
	update_camera_rotation(component_mouse_capture._mouse_input)
	
func update_camera_rotation(input: Vector2) -> void:
	_rotation.x += input.y
	_rotation.y += input.x
	
		
	_rotation.z = 0.0
	rotation = Vector3(_rotation.x, _rotation.y, 0.0)
