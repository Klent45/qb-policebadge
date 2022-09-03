# Police Badge for QBCore

Display police badge as officer to other civilian.

**Add this item on qb-core/shared.lua:**

`["specialbadge"] 				 = {["name"] = "specialbadge", 			  		["label"] = "Police Badge", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "specialbadge.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Special Badge of Law Enforcements"},

**Add this image on qb-inventory/html/images:**

![specialbadge](https://user-images.githubusercontent.com/66751192/137593547-f36d52d3-34e7-4369-abea-bdb6876696c6.png)

**I use 1920x1200 screen, adapt in cl_badge.lua for your screen because I don't have the other resolutions so I couldn't do it**

Between lines 111 and 166

for exemple :
elseif x == 1920 and y == 1200 then
			posx, posy = 0.1289, 0.325
			width, height = 0.062, 0.110

![policebadge](https://user-images.githubusercontent.com/44592288/188285585-1ddfc21f-7bfe-431a-a1ce-60361fefd76a.PNG)
