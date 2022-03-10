extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	if Inventory.money >= 2:
		self.dest = "Scenes/Tavern/Glitch_Wine_Good"
	else:
		self.dest = "Scenes/Tavern/Glitch_Wine_Bad"
	self.minutes = 10
