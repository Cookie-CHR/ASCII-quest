extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/Forest/09_00_Cat"
	self.minutes = 60
	self.inv_get = ["cat"]
	self.sound = "Meow"
