extends Button
var dest = Time.path()+"08_00_Park"
var minutes = 0

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	dest = Time.path()+"08_00_Park"
	minutes = 0
