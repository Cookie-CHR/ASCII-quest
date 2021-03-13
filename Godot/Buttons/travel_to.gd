extends Button

var dest = General.guess_scn(self.name, 10)
var minutes = 10

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	dest = General.guess_scn(self.name, 10)
	minutes = 10
