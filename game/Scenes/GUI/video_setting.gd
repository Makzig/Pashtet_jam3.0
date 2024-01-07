extends Control

@onready var button_container: VBoxContainer = $ButtonContainer



func _ready() -> void:
	$ButtonContainer/VSyncMode.button_pressed = true

func _on_full_screen_mode_toggled(toggled_on: bool) -> void:
	if toggled_on:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)

func _on_v_sync_mode_toggled(toggled_on: bool) -> void:
	if toggled_on:
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_ENABLED)
	else:
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)




func _on_button_pressed() -> void:
	queue_free()
