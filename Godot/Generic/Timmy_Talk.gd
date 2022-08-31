extends Label

func _ready():
	if General.sc_find(["T_Group"]):
		if self.name=="Timmy_text":
			if not General.sc_find(["Timmy_Solved"]):
				self.text = "Also, mr. Copper is standing on the sidewalk alone, apparently waiting for something."
			else:
				self.text = ""
		elif self.name=="Timmy_image":
			self.text =  "\n\n\n\n\n\n            .3..\n\n\n\n           OoOoOoO\n           ....oOo"


