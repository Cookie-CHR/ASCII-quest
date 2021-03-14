extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = General.guess_scn(self.name, 10)
	self.minutes = 10

func set_pos(num):
	self.position = [36, 413+(23*num)]
