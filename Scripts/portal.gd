extends Area3D

@export_file var level_to_load

var player_entered = false
signal update_console

func _unhandled_input(_event):
	if Input.is_action_just_pressed("portal"):
		get_tree().change_scene_to_file(level_to_load)

func _on_body_entered(_body):
	player_entered = true
	if not Global.has_deepwoods_key:
		emit_signal("update_console", "Get the key to the Deepwoods")
	else:
		emit_signal("update_console", "Press E to travel")

func _on_body_exited(_body):
	player_entered = false
	emit_signal("update_console", "")
