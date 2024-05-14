extends Control

@export_file var next_scene

func _ready():
	$Opening.play()

func _on_finished():
	get_tree().change_scene_to_file(next_scene)
