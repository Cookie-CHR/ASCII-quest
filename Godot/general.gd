extends Node

var prev_sc = "Title"

func change_scn(dest):
	return get_tree().change_scene(dest+".tscn")
