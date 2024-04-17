extends Area3D

@export var type = "Default"
var is_collected = false
signal item_collected

func _on_body_entered(body):
	
	Global.flamethrower_collected = Global.flamethrower_collected + 1
	if type == "Flamethrower":
		body.add_flamethrower()
	if type == "mushroom":
		Global.mushroom_count = Global.mushroom_count + 1
		print("mushroom count", Global.mushroom_count)
	
	if type == "deepwoods_key":
		Global.deepwoods_key_count = Global.deepwoods_key_count + 1
		Global.has_deepwoods_key = true
	
	emit_signal("item_collected")
	queue_free()
