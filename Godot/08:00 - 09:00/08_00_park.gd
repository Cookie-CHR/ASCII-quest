extends Panel

func _ready():
	
	get_node("Go").connect("pressed", self, "change_scn", ["Generic_travel"])
	get_node("Wait").connect("pressed", self, "wait", [30])

func change_scn(dest):
	General.update_prev("Park")
	General.change_scn(dest)

func wait(minutes):
	Time.time_sum(minutes);
	General.change_scn(Time.path()+Time.time_print("_")+"_park")
