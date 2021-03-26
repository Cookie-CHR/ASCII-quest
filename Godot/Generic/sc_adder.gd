extends Node2D
func _ready():
	if not General.sc_find([self.name]):
		General.sc_add([self.name])
