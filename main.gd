extends Node2D

var slot1_number: int
var slot2_number: int
var slot3_number: int
var gambling_state : bool = true
@export var money : int = 500

func _input(event):
	if (event is InputEventMouseButton):
		if (event.button_index == 1 and event.is_pressed()):
			if gambling_state:
				gambling_state = false
				slot1_number = randf()*7
				slot2_number = randf()*7
				slot3_number = randf()*7
				get_node("Phone").get_node("AnimationPhone").play("yes_gambling")
				get_tree().get_root().get_node("Main/HUD").go_gambling(5)
				#SLOT 1
				if (slot1_number == 1):
					get_node("Slot1").get_node("AnimationSlots").play("running_1")
				elif (slot1_number == 2):
					get_node("Slot1").get_node("AnimationSlots").play("running_2")
				elif (slot1_number == 3):
					get_node("Slot1").get_node("AnimationSlots").play("running_3")
				elif (slot1_number == 4):
					get_node("Slot1").get_node("AnimationSlots").play("running_4")
				elif (slot1_number == 5):
					get_node("Slot1").get_node("AnimationSlots").play("running_5")
				elif (slot1_number == 6):
					get_node("Slot1").get_node("AnimationSlots").play("running_6")
				elif (slot1_number == 7):
					get_node("Slot1").get_node("AnimationSlots").play("running_7")
				#SLOT 2
				if (slot2_number == 1):
					get_node("Slot2").get_node("AnimationSlots").play("running_1")
				elif (slot2_number == 2):
					get_node("Slot2").get_node("AnimationSlots").play("running_2")
				elif (slot2_number == 3):
					get_node("Slot2").get_node("AnimationSlots").play("running_3")
				elif (slot2_number == 4):
					get_node("Slot2").get_node("AnimationSlots").play("running_4")
				elif (slot2_number == 5):
					get_node("Slot2").get_node("AnimationSlots").play("running_5")
				elif (slot2_number == 6):
					get_node("Slot2").get_node("AnimationSlots").play("running_6")
				elif (slot2_number == 7):
					get_node("Slot2").get_node("AnimationSlots").play("running_7")
				#SLOT 3
				if (slot3_number == 1):
					get_node("Slot3").get_node("AnimationSlots").play("running_1")
				elif (slot3_number == 2):
					get_node("Slot3").get_node("AnimationSlots").play("running_2")
				elif (slot3_number == 3):
					get_node("Slot3").get_node("AnimationSlots").play("running_3")
				elif (slot3_number == 4):
					get_node("Slot3").get_node("AnimationSlots").play("running_4")
				elif (slot3_number == 5):
					get_node("Slot3").get_node("AnimationSlots").play("running_5")
				elif (slot3_number == 6):
					get_node("Slot3").get_node("AnimationSlots").play("running_6")
				elif (slot3_number == 7):
					get_node("Slot3").get_node("AnimationSlots").play("running_7")
				
				gambling_state = true

func _process(_delta):
	$AnimationBackground.play("basic_driving")
	
