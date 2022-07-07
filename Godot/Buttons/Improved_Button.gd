extends Button
# Initialize variables with basic values
var dest = ""
var minutes = 0
var money = 0
var inv_get = []
var inv_remove = []
var inv_required = []
var sc_required = []
var sc_forbidden = ["This one mustn't be empty or the check will return true"]
var sound = "Default"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	pass
