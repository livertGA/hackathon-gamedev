extends Control

#max 430 min 0

var degg=0.0
var max=false
func _process(delta):
	_rand()
	_click()
	_rot()
	pass
	
func _rot():
	if degg<15 and not max:
		degg+=0.5
		$TextureRect.rotation = degg
		max=true
	elif degg>-15:
		degg-=0.5
		$TextureRect.rotation = degg
		if degg<-15:
			max=false

func _rand():
	$ProgressBar/Control/ColorRect.position.x = randi_range(0,430)

var last = false
var tol= 0.3
func _click():
	if Input.is_action_just_pressed("ui_accept"):
		if $ProgressBar/Control/ColorRect.position/430+tol/2>$ProgressBar.value and $ProgressBar/Control/ColorRect.position/430-tol/2<$ProgressBar.value:
			if last:
				get_parent().get_parent().hide()
				get_parent().get_parent().get_node("Control/Panel").show()
				last=false
			tol=0.2
			_rand()
			last = true
		else:
			get_parent().get_parent().hide()


#progress 30% , 20% ,10%

func _bar():
	$ProgressBar.value += 0.05
