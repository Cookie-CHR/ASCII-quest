extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.sc_required = ["Seed_Planted"]
	self.sc_forbidden = ["Fruit_Harvested"]
	
	self.dest = "Scenes/Park/Fruit"
	self.money = 4
