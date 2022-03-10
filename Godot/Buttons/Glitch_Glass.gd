extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/Tavern/Glitch_Glass"
	self.minutes = 30
	self.inv_required = ["magic glass"]
	self.inv_remove = ["magic glass"]
	self.inv_get = ["glitch"]
	self.sc_forbidden = ["Got_Glitch"]
