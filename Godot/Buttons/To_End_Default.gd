extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/X_Ending/Default"
	# time must be 19:00
	self.minutes = 19
	self.unreadable = true
