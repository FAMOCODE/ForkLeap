class_name PlayerController extends RigidBody3D
var is_on_floor = false
@export var debug : bool = false
@export_category("References")
@export var camera3d : CameraController
var friction = 1.0
var velocity=Vector3()

var gravity = ProjectSettings.get_setting("physics/jolt_physics_3d/joints/world_node")

var speed : float = 0.0 
var stop_speed : float= 0.1

func _physics_process(_delta):
	if friction >= 0: friction = 0
	is_on_floor = false
