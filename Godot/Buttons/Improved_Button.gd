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
var unreadable = false

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	pass

func _ready():
	#change color if button has already been pressed in the path
	if get_tree().get_current_scene().get_filename()+"/"+self.name in General.buttons_pressed:
		set("custom_colors/font_color", Color(0.88, 0.88,0.88,0.7))
