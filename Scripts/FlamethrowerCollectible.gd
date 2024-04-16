extends Area3D

@export var type = "Default"
var is_collected = false

func _on_body_entered(body):
	
	Global.flamethrower_collected = Global.flamethrower_collected + 1
	if type == "Flamethrower":
		body.add_flamethrower()
	queue_free()
