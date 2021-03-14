extends Panel

# Called when the node enters the scene tree for the first time.
func _ready():
	General.update_prevs()
	for child in get_children():
		if child is Button:
			child.re_init()
			get_node(child.name).connect("pressed", self, "change_scn", [child.dest, child.minutes])


func change_scn(dest, minutes):
	Time.time_sum(minutes);
	var error = get_tree().change_scene(dest+".tscn")
	if error:
		General.guess_scn(dest, minutes)
