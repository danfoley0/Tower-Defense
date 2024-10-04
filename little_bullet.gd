extends Node2D
@export var LittleBullet : PackedScene
var speed = 750

# Called when the node enters the scene tree for the first time.
func _ready():
	if Input.is_action_just_pressed("shoot"):
		shoot()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	position += transform.x * speed * delta

func _on_area_2d_body_entered(body):
	if body.is_in_class("Enemy"):
		body.queue_free()
	queue_free()

func shoot():
	var b = get_node("LittleBullet").instantiate()
	owner.add_child(b)
	b.transform = $Muzzle.global_transform
