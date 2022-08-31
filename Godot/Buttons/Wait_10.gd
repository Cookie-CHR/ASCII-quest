extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = General.guess_scn(General.curr_sc, 10)
	self.minutes = 10
	if Time.h > 20:
		hide()

