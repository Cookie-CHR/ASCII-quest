extends "Improved_Button.gd"

func re_init():
	# Associate each item with its price with a dictionary
	var items = {"Chicken":3,\
				 "Soup":2,\
				 "Tea":1,\
				 "Beer":2,\
				 "Wine":3
				}
	
	# Check if the item ordered is in the list (should always be true)
	# and if the player can afford it
	if (self.name in items.keys() and Inventory.money >= items[self.name]):
		self.dest = "Scenes/Tavern/Order_"+self.name
		self.money = -(items[self.name])
		self.inv_get = [self.name]
	else:
		dest = "Scenes/Tavern/Order_Fail"
	
	self.minutes = 30
