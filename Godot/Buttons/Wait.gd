extends Button
var dest = General.guess_scn(General.curr_sc, 30)
var minutes = 30

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	dest = General.guess_scn(General.curr_sc, 30)
	minutes = 30
