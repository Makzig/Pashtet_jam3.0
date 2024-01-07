extends Control


const SoundSetting = preload("res://Scenes/GUI/sound_settings.tscn")
const VideoSetting = preload("res://Scenes/GUI/video_setting.tscn")





func add_settings(setting_scene:PackedScene) -> void:
	for i in get_children():
		i.visible = false
	var setting = setting_scene.instantiate()
	add_child(setting)
	setting.get_node("BackButton").pressed.connect(_on_pressed)



func _on_pressed() -> void:
	for i in get_children():
		i.visible = true


 


func _on_video_pressed() -> void:
	add_settings(VideoSetting)


func _on_sound_pressed() -> void:
	add_settings(SoundSetting)


func _on_back_button_pressed() -> void:
	queue_free()
