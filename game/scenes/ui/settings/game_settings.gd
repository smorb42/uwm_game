extends Control

onready var fullscreen = $setings_panel/VBoxContainer/fullscreen
var menu = "res://scenes/ui/menu.tscn"

func _ready():
	
	
	# add a load function to pull user settings
	# for now it just pulls the last set value
	fullscreen.pressed = OS.window_fullscreen


func _process(delta):
	if Input.is_action_just_pressed("menu"):
		if get_tree().paused == false:
			show()
			get_tree().paused = true
		else:
			hide()
			get_tree().paused = false


func _on_back_pressed():
	hide()
	get_tree().paused = false

func _on_full_screen_toggled(button_pressed):
	OS.window_fullscreen = button_pressed


func _on_menu_pressed():
	hide()
	get_tree().paused = false
	get_tree().change_scene(menu)


func _on_quit_pressed():
	get_tree().quit()
