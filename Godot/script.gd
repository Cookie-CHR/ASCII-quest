extends Panel

# Called when the node enters the scene tree for the first time.
func _ready():
	General.update_prevs()
	call_deferred ("main")
	
func main():
	for child in get_children():
		if child is Button:
			get_node(child.name).connect("pressed", self, "change_scn", [child.dest, child.minutes])

func change_scn(dest, minutes):
	General.change_scn(dest, minutes)
