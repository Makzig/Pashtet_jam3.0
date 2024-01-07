extends Control


@onready var sound_slider: HSlider = $VBoxContainer/SoundSlider




func _on_sound_slider_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(0, value)
	if value == sound_slider.min_value:
		AudioServer.set_bus_mute(0 , true)
	else:
		AudioServer.set_bus_mute(0 , false)


func _on_back_button_pressed() -> void:
	queue_free()
