extends Node2D
@export var turret1scene : PackedScene
@export var turret3scene : PackedScene
var turretPermission = true
var money = 100
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("left_click") and turretPermission == true:
		var turret : Node2D = turret1scene.instantiate()
		turret.global_position = get_global_mouse_position()
		self.add_child(turret)

func _on_area_2d_mouse_entered():
	turretPermission = false
	pass # Replace with function body.


func _on_area_2d_mouse_exited():
	
	turretPermission = true
	pass # Replace with function body.
