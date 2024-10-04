extends Sprite2D
var upgradePermission = false
@export var turret2scene : PackedScene

func _process(_delta):
	if Input.is_action_just_pressed("right_click") and upgradePermission:
		var turret2 : Node2D = turret2scene.instantiate()
		turret2.global_position = self.global_position
		get_parent().add_child(turret2)
		self.queue_free()
		
func _physics_process(_delta):
	pass

func _on_tower_area_mouse_entered():
	upgradePermission = true
	pass # Replace with function body.

func _on_tower_area_mouse_exited():
	upgradePermission = false
	pass # Replace with function body.
