extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if Inventory.money >= 2:
		self.text = "You jump up, screaming in terror. Somehow you manage to mantain the grip on the bottle, but two of your gold pieces fall from your pockets and into the glitchy mess. You are definitely not going to pick them up."
		Inventory.money = Inventory.money - 2
		Inventory.inv_add(["wine"])
	else:
		self.text = "You jump up, screaming in terror and accidentally drop the bottle, who falls in pieces on the floor. You have had enough jumpscares for today."
