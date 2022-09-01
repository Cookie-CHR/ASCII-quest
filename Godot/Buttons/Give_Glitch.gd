extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/Lab/Give_Glitch"
	self.sc_forbidden = ["Glitch_Given"]

	self.inv_required = ["glitch"]
	self.inv_remove = ["glitch"]
	self.unreadable = true
