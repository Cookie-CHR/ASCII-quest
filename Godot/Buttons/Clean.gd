extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/Park/Clean"
	self.minutes = 120
	self.sc_required = ["Clean_Accepted"]
	self.inv_remove = ["broom", "gloves"]
	self.sc_forbidden = ["Park_Cleaned"]
	self.money = 3
