extends RigidBody3D

@export var speed: float = 40.0
@export var bullet_scene = "res://Scenes/bullet.tscn"

func _ready():
	# Apply an initial velocity in the forward direction
	linear_velocity = transform.basis.z * -speed

#func _on_collision():
	# Handle what happens when the bullet collides (e.g., damage player, destroy bullet)
#	queue_free()  # Destroy the bullet after collision


func _on_body_entered(body: Node) -> void:
	queue_free()
