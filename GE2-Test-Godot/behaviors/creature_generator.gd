@tool
extends Node3D

# Adding fields length, frequency, start_angle, base_size, multiplier
@export var length  = 1
@export var frequency  = 0
@export var start_angle  = 0
@export var base_size = 0
@export var multiplier = 0

var force = Vector3.ZERO

func _process(delta):
	# draw gizmo segments
	for i in length:
		DebugDraw3D.draw_box(global_transform.origin, Quaternion.IDENTITY,  Vector3(3, 3, 3), Color.DARK_GOLDENROD, true)
		DebugDraw3D.draw_box(global_transform.origin / 3, Quaternion.IDENTITY,  Vector3(30, 3, 3), Color.DARK_GOLDENROD, true)

func _ready():
	if not Engine.is_editor_hint():		
		pass
	



