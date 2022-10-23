extends Control

onready var menu_setings = $menu_settings
var game = "res://scenes/game/main.tscn"

func _ready():
	pass # Replace with function body.


func _on_start_pressed():
	get_tree().change_scene(game)


func _on_settings_pressed():
	menu_setings.show()
	get_tree().paused = true


func _on_quit_pressed():
	get_tree().quit()
