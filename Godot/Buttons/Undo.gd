extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = General.guess_scn(General.prev_sc, 0)
	self.unreadable = true
	if General.prev_sc == "Announcement":
		hide()
