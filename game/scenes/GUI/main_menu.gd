extends Control


const Settings = preload("res://Scenes/GUI/Settings.tscn")





func spawn_setting() -> void:
	var settings = Settings.instantiate()
	add_child(settings)
	





func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Levels/main_scene.tscn")


func _on_settings_pressed() -> void:
	spawn_setting()


func _on_exit_pressed() -> void:
	get_tree().quit()
