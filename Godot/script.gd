extends Panel

# Called when the node enters the scene tree for the first time.
func _ready():
	General.update_prevs()
	for child in get_children():
		if child is Button:
			get_node(child.name).connect("pressed", self, "change_scn", [child.dest, child.minutes])
	print("__________")

func change_scn(dest, minutes):
	var exists = General.change_scn(dest, minutes)
	if exists:
		print ("All right, I'll just guess")
		print(dest, minutes)
		# General.guess_scn(dest, minutes)
