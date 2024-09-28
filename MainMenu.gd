extends MarginContainer


func _on_new_game_button_up():
	get_tree().change_scene_to_file("res://world.tscn")

func _on_quit_button_up():
	get_tree().quit()


