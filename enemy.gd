extends Node2D
class_name Enemy
@onready var path_follow : PathFollow2D = $/root/Main/EnemyPath/EnemyPathFollow
@export var speed = 50

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	path_follow.progress += speed * delta
	pass
