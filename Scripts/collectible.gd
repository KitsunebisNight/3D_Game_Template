extends Area3D

var is_collected = false

func _on_body_entered(_body):
	
	Global.flamethrower_collected = Global.flamethrower_collected + 1
	$Pickup.play()
	queue_free()
