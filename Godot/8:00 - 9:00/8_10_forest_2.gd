extends Panel

func _ready():
	Time.time_sum(60);
	get_node("Go").connect("pressed", self, "change_scn", ["/Generic/Generic_travel"])

func change_scn(dest):
	General.update_prev("Forest")
	General.change_scn(dest)
