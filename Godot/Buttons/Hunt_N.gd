extends "Improved_Button.gd"

func re_init():
	if General.sc_find(["Got_Cat"]):
		self.dest = "Scenes/Forest/Hunt_N"
		self.minutes = 60
	else:
		self.dest = "Scenes/Forest/Hunt_Cat"
		self.minutes = 60
		self.inv_get = ["cat"]
