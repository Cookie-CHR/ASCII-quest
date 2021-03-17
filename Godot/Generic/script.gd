extends Panel

# Called when the node enters the scene tree for the first time.
func _ready():
	General.update_prevs()
	var i = 0
	
	for child in get_children():
		if child is Button:
			i = manage(child, i)

func manage(button, i):
	button.re_init()
	
	print(General.curr_sc)
	var base_y
	if get_tree().get_current_scene().is_in_group("Big_Screen_Scene"):
		base_y = 462
	else:
		base_y = 413
	button.set_position(Vector2(36, base_y+(23*i)))
	if button.visible == true:
		i += 1
	
	get_node(button.name).connect("pressed", self, "change_scn", [button])
	return i


func change_scn(button):
	MusicPlayer.change_music(button.music)
	Time.time_sum(button.minutes);
	var error = get_tree().change_scene(button.dest+".tscn")
	if error:
		General.guess_scn(button.dest, button.minutes)
