extends Panel

func _ready():
	Time.time_sum(30);
	get_node("Continue").connect("pressed", self, "change_scn", ["9_00_park"])

func change_scn(dest):
	General.update_prev("Park")
	General.change_scn(dest)
