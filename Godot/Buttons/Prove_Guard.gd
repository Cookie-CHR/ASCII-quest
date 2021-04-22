extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/Castle/Prove_Guard"
	self.sc_required = "Guard_Heard"
	self.sc_forbidden = "Guard_Proved"
