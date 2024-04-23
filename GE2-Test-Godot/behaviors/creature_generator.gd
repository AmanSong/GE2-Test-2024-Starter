@tool
extends Node3D

# Adding fields length, frequency, start_angle, base_size, multiplier
@export var length  = 1
@export var frequency  = 1
@export var start_angle  = 1
@export var base_size = 3
@export var multiplier = 1

var force = Vector3.ZERO

func _process(delta):
	# draw gizmo segments
	var pos = transform.origin + Vector3(0, 0, base_size)
	for i in length:
		DebugDraw3D.draw_box(pos * i, Quaternion.IDENTITY,  Vector3(base_size, base_size, base_size), Color.DARK_GOLDENROD, true)

func _ready():
	if not Engine.is_editor_hint():		
		pass
	



