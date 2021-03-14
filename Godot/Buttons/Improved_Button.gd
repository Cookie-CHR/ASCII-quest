extends Button
# Initialize variables with basic values
var dest = ""
var minutes = 0
var money = 0
var inv_get = []
var inv_lose = []
var inv_required = []

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	dest = ""
	minutes = 0
	money = 0
	inv_get = []
	inv_lose = []
	inv_required = []
