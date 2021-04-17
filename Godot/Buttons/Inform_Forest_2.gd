extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/Castle/Inform_Forest_2"
	self.minutes = 30
	self.sc_required = ["Plague_Forest", "No_Plague_Forest"]
	self.sc_forbidden = ["Informed_Forest_2"]
