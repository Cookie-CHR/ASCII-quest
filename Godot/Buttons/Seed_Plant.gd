extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/Park/Seed"
	self.minutes = 30
	self.sc_required = ["Seed_Accepted"]
	self.inv_remove = ["seed"]
	self.sc_forbidden = ["Seed_Planted"]
