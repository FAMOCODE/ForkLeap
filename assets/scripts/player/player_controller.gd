class_name PlayerController extends RigidBody3D

@export var debug : bool = false
@export_category("References")
@export var camera3d : CameraController
var gravity = ProjectSettings.get_setting("physics/jolt_physics_3d/joints/world_node")
