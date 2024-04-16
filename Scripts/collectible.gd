extends Area3D

@export var type = "mushroom"
var is_collected = false
signal item_collected

func _on_body_entered(body):
	if type == "mushroom":
		global.mushroom_count = global.mushroom_count + 1
	
	if type == "deepwoods_key":
		global.has_deepwoods_key = true

	body.play_pickup_sound()
	emit_signal("item_collected")
	queue_free()
