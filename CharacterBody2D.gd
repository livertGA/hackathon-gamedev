extends CharacterBody2D


var basket = 300
var speed = 800
var vecy = 0
var vecx = 0
var M_menu = false
func _physics_process(delta):
	if not M_menu:
		if Input.is_action_pressed("ui_up"):
			vecy = -1
		elif Input.is_action_pressed("ui_down"):
			vecy = 1
		else:
			vecy = 0
		if Input.is_action_pressed("ui_left"):
			vecx = -1
		elif Input.is_action_pressed("ui_right"):
			vecx = 1
		else:
			vecx = 0
	else:
		vecx=0
		vecy=0
	velocity = Vector2(vecx*speed*delta,vecy*speed*delta)
	#print(velocity)
	move_and_slide()
	


var grzyb_d
func _on_zbierz_button_up():
	if grzyb_d:
		basket += 50
	else:
		basket -=50
	M_menu = false

func _on_odrzuć_button_up():
	M_menu = false
