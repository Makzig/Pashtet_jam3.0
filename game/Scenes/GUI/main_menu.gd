extends Control


@export_file("*.tscn") var main_scene_path
const Settings = preload("res://Scenes/GUI/settings.tscn")





func spawn_setting() -> void:
	var settings = Settings.instantiate()
	add_child(settings)
	





func _on_play_pressed() -> void:
	get_tree().change_scene_to_file(main_scene_path)


func _on_settings_pressed() -> void:
	spawn_setting()


func _on_exit_pressed() -> void:
	get_tree().quit()
