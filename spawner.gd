extends Node2D

var number =0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position = get_parent().get_node("CharacterBody2D").position


func spawn():
	if not get_parent().get_node("CharacterBody2D").M_menu:
		number = randi_range(0,3)
		var shroom = preload("res://maschrooms/mashrooms.tscn")
		var thing = shroom.instantiate()
		#print(number)
		if number == 0:
			thing.position.x = position.x + randi_range(60,300)
			thing.position.y = position.y + randi_range(60,300)
		elif number == 1:
			thing.position.x = position.x + randi_range(-60,-300)
			thing.position.y = position.y + randi_range(60,300)
		elif number == 2:
			thing.position.x = position.x + randi_range(60,300)
			thing.position.y = position.y + randi_range(-60,-300)
		elif number == 3:
			thing.position.x = position.x + randi_range(-60,-300)
			thing.position.y = position.y + randi_range(-60,-300)
		get_parent().add_child(thing)
		$Timer.start()
		get_parent().get_parent().get_node("CanvasLayer/Control").hide()
		get_parent().get_parent().get_node("CanvasLayer/Control/Control").show()
	else:
		get_parent().get_parent().get_node("CanvasLayer/Control").show()
		get_parent().get_parent().get_node("CanvasLayer/Control/Control").show()
func _on_timer_timeout():
	spawn()
	spawn()
