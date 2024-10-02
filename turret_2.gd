extends Sprite2D
var upgradePermission2 = false
@export var turret3scene : PackedScene

func _process(_delta):
	if Input.is_action_just_pressed("right_click") and upgradePermission2:
		var turret3 : Node2D = turret3scene.instantiate()
		turret3.global_position = self.global_position
		get_parent().add_child(turret3)
		self.queue_free()

func _on_tower_2_area_mouse_entered():
	upgradePermission2 = true
	pass # Replace with function body.


func _on_tower_2_area_mouse_exited():
	upgradePermission2 = false
	pass # Replace with function body.
