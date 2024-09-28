extends Node2D

var mashroom_type = 0
#there is good 1 or bad 0


func _on_area_2d_body_entered(body):
	body.menu = true
