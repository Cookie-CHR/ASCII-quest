extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/Castle/Prove_Flask"
	self.sc_required = ["Flask_Found"]
	self.sc_forbidden = ["Flask_Proved"]
