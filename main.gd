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
				slot1_number = randf()*7 + 1
				print("Slot1 = ")
				print(slot1_number)
				slot2_number = randf()*7 + 1
				print("Slot2 = ")
				print(slot2_number)
				slot3_number = randf()*7 + 1
				print("Slot3 = ")
				print(slot3_number)
				get_node("Phone").get_node("AnimationPhone").play("yes_gambling")
				money -= 10
				get_tree().get_root().get_node("Main/HUD").go_gambling(10)
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
				#Gambling Logic
				if (slot1_number == 7 and slot2_number == 7 and slot3_number == 7):
					$JackpotAnimation.play("jackpot_animation")
					get_tree().get_root().get_node("Main/HUD").big_winning(1000)
					money += 1000
				elif (slot1_number == 6 and slot2_number == 6 and slot3_number == 6):
					$JackpotAnimation.play("jackpot_animation")
					get_tree().get_root().get_node("Main/HUD").big_winning(500)
					money += 500
				elif (slot1_number == 5 and slot2_number == 5 and slot3_number == 5):
					$JackpotAnimation.play("jackpot_animation")
					get_tree().get_root().get_node("Main/HUD").big_winning(250)
					money += 250
				elif (slot1_number == 4 and slot2_number == 4 and slot3_number == 4):
					$JackpotAnimation.play("jackpot_animation")
					get_tree().get_root().get_node("Main/HUD").big_winning(200)
					money += 200
				elif (slot1_number == 3 and slot2_number == 3 and slot3_number == 3):
					$JackpotAnimation.play("jackpot_animation")
					get_tree().get_root().get_node("Main/HUD").big_winning(150)
					money += 150
				elif (slot1_number == 2 and slot2_number == 2 and slot3_number == 2):
					$JackpotAnimation.play("jackpot_animation")
					get_tree().get_root().get_node("Main/HUD").big_winning(125)
					money += 125
				elif (slot1_number == 1 and slot2_number == 1 and slot3_number == 1):
					$JackpotAnimation.play("jackpot_animation")
					get_tree().get_root().get_node("Main/HUD").big_winning(100)
					money += 100
				#Losing Code
				if (money <= 0):
					$Lose.visible = true
					get_tree().paused = true
				
				gambling_state = true

func _process(_delta):
	$Lose.visible = false
	$AnimationBackground.play("basic_driving")
	
