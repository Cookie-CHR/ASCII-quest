extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	if (Time.h < 14):
		self.dest = "Scenes/Lab/Fail"
	elif General.sc_find(["Annouced"]):
		self.dest = "Scenes/Lab/Fail_2"
	else:
		self.dest = "Scenes/Lab/Secret_Find"
	self.unreadable = true
