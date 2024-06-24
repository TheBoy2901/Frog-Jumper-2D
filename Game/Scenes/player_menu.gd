extends Node


func _on__player_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")

func _on__players_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu_2Players.tscn")

func _on_quit_pressed():
	get_tree().quit()
