extends Node2D

var slot1_number: int
var slot2_number: int
var slot3_number: int

func _input(event):
	if (event is InputEventMouseButton):
		slot1_number = randf()*7
		slot2_number = randf()*7
		slot3_number = randf()*7
		get_node("Phone").get_node("AnimationPhone").play("yes_gambling")
		

func _process(_delta):
	$AnimationBackground.play("basic_driving")
	
