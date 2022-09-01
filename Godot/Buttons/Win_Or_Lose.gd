extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	if (Time.h < 14):
		self.dest = "Scenes/Lab/Fail"
	else:
		self.dest = "Scenes/Lab/Secret_Find"
	self.unreadable = true
