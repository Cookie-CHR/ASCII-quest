extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/Castle/Prove_Notes"
	self.sc_required = ["Notes_Found"]
	self.sc_forbidden = ["Notes_Proved"]
