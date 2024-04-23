@tool
extends Node3D

# Adding fields length, frequency, start_angle, base_size, multiplier
@export var length  = 1
@export var frequency  = 1
@export var start_angle  = 1
@export var base_size = 3
@export var multiplier = 1

@export var head:PackedScene
@export var cube:PackedScene

func _process(delta):
	# draw gizmo segments
	var size = base_size * multiplier
	var pos = transform.origin + Vector3(0, 0, size)
	for i in length:
		DebugDraw3D.draw_box(pos * i, Quaternion.IDENTITY,  Vector3(size, size, size), Color.DARK_GOLDENROD, true)

func _ready():
	if not Engine.is_editor_hint():
		var body_size = (base_size * multiplier) - 5
	
		# draw the head
		var pos = transform.origin + Vector3(0, 0, 0)
		var head = head.instantiate()
		head.global_transform.origin = pos
		head.get_child(0).size.x = body_size
		head.get_child(0).size.y = body_size
		head.get_child(0).size.z = body_size
		add_child(head)
		
		# draw the body
		for i in length:
			var body_pos = Vector3(0, 0, 3 * i)
			var body = cube.instantiate()
			body.transform.origin = body_pos
			body.get_child(0).size.x = body_size
			body.get_child(0).size.y = body_size
			body.get_child(0).size.z = body_size
			add_child(body)
			
		



