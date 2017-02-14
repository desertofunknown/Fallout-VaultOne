obj/Hud/Day
	icon = 'icons/HUD.dmi'
	icon_state = "Moon"
	layer = 11
	name = ""
client/proc/buildhud()
	var/obj/Hud/Day/h18 = new()
	h18.screen_loc = "10,19"

client
	New()
		..()
		buildhud()