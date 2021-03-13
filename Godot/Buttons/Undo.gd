extends Button
var dest = General.guess_scn(General.prev_sc, 0)
var minutes = 0

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	dest = General.guess_scn(General.prev_sc, 0)
	minutes = 0
