extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/09:00 - 10:00/09_00_"+General.curr_sc+ "_Cat"
	self.minutes = 30
	self.money = 2
	self.inv_required = "cat"
