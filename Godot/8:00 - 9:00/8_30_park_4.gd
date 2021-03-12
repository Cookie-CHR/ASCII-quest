extends Panel

func _ready():
	Time.time_sum(30);
	get_node("Continue").connect("pressed", self, "change_scn", ["9_00_park", 0])

func change_scn(dest, minutes):
	General.update_prev("Park")
	General.change_scn(dest, minutes)
