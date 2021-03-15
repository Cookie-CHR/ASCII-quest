extends Panel

# Called when the node enters the scene tree for the first time.
func _ready():
	General.update_prevs()
	for child in get_children():
		if child is Button:
			child.re_init()
			get_node(child.name).connect("pressed", self, "change_scn", [child])


func change_scn(button):
	MusicPlayer.change_music(button.music)
	Time.time_sum(button.minutes);
	var error = get_tree().change_scene(button.dest+".tscn")
	if error:
		General.guess_scn(button.dest, button.minutes)
