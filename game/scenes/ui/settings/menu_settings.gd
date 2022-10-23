extends Control

onready var fullscreen = $setings_panel/VBoxContainer/fullscreen


func _ready():
	
	
	# add a load function to pull user settings
	# for now it just pulls the last set value
	fullscreen.pressed = OS.window_fullscreen



func _on_back_pressed():
	hide()
	get_tree().paused = false

func _on_full_screen_toggled(button_pressed):
	OS.window_fullscreen = button_pressed
