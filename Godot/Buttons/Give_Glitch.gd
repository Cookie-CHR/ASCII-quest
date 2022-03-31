extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/Lab/Give_Glitch"
	
	self.inv_required = ["glitch"]
	# either one will be removed
	self.inv_remove = ["glitch"]
