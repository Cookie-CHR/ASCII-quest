extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/"+General.curr_sc+"/Where_Cat"
	self.sc_required = ["Cat_"+General.curr_sc]
