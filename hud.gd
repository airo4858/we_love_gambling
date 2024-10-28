extends CanvasLayer

var money : int = 250

func go_gambling(num : int):
	money -= num
	$Money.text = "Money: $" + str(money)

func big_winning(num : int):
	money += num
	$Money.text = "Money: $" + str(money)
