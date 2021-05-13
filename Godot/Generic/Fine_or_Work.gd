extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if Inventory.money >= 3:
		self.text = "You pay your fine, and your alcol gets confiscated"
		Inventory.money = Inventory.money - 3
	else:
		self.text = "Since you don't have enough money, you pay your fine by dusting all the statues in the castle. It's a really tedious job, and it takes you an hour to finish."
