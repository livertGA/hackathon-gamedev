extends Node2D

var mashroom_type = 0
#there is good 1 or bad 0

func _ready():
	
	pass

func _on_area_2d_body_entered(body):
	self.queue_free()
	body.M_menu = true
