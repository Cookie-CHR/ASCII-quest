extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/Lab/Q_Timmy"
	self.sc_required = ["T_Group"]
	self.inv_get = ["empty glass"]
	self.sc_forbidden = ["Glass_Got"]
