extends Panel

func _ready():
	get_node("Hunt").connect("pressed", self, "change_scn", [Time.path()+"8_10_forest_2"])
	get_node("Wait").connect("pressed", self, "wait", [10])
	get_node("Go").connect("pressed", self, "change_scn", ["Generic_travel"])

func change_scn(dest):
	General.update_prev("Forest")
	General.change_scn(dest)

func wait(minutes):
	Time.time_sum(minutes);
	General.guess_scn("forest");
