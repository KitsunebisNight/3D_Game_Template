extends Label

@export_file var level_to_load

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file(level_to_load)
