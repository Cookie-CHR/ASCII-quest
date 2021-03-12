extends Panel

func _ready():
	Time.time_sum(60);
	get_node("Go").connect("pressed", self, "change_scn", ["/Generic/Generic_travel", 0])

func change_scn(dest, minutes):
	General.update_prev("Forest")
	General.change_scn(dest, minutes)
