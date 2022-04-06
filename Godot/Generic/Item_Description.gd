extends Label

func _ready():
	if General.sc_find([self.name+"_Given"]):
		self.text = "\nYou already gave me that."
