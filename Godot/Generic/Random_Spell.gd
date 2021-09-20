extends "sc_adder.gd"

var rng = RandomNumberGenerator.new()

func _ready():
	rng.randomize()
	var num = rng.randi_range(1, 3)
	if num == 1:
		spell_name("Zashamez")
	elif num == 2:
		spell_name("Bouborus")
	else:
		spell_name("Kickrix")
	if not General.sc_find([self.name]):
		General.sc_add([self.name])

func spell_name (spell):
	self.name = spell
	for child in get_children():
		child.text = spell
