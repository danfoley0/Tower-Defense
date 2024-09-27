extends Node2D

@export var turret1scene : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	 # Replace with function body.
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("left_click"):
		var turret : Node2D = turret1scene.instantiate()
		turret.global_position = get_global_mouse_position()
		self.add_child(turret)