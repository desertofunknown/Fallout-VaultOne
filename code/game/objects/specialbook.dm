/obj/item/weapon/special
	name="Book of S.P.E.C.I.A.L goodluck, Game was rigged from the start."
	icon='icons/fallout/books.dmi'
	icon_state="SPECIAL"
	desc="A book your parents gave you as a child."
	throw_speed = 1
	throw_range = 30

/*/obj/item/weapon/storage/book/special/SPECIAL(mob/living/carbon/human/user)
	var/dat
	dat += "<div class='clearBoth'>How Special Are You?</div><br>"
	dat += "<ul>"
	dat += "<div class='sentance'>Attributes</div>"
	dat += "<li>Strength: [user:strength]</li>"
	dat += "<li>Agility: [user:agility]</li>"
	dat += "<li>Preception: [user:preception]</li>"
	dat += "<li>Intelligence: [user:intelligence]</li>"
	dat += "<li>Luck: [user:luck]</li>"
	dat += "<li>Dexterity: [user:dexterity]</li>"
	dat += "<li>Charisma: 0</li>"
	dat += "<div class='sentance'>Skills</div></li>"
	dat += "<li>Small Guns: [user:small_guns]</li>"
	dat += "<li>Big Guns: [user:big_guns]</li>"
	dat += "<li>Energy Weapons: [user:energy_weapons]</li>"
	dat += "<li>Melee: [user:melee_weapons]</li>"
	dat += "<li>Unarmed: [user:unarmed]</li>"
	dat += "<li>Barter: [user:barter]</li>"
	dat += "<li>Explosives: [user:explosives]</li>"
	dat += "<li>Security: [user:lockpick]</li>"
	dat += "<li>Medicine: [user:medicine]</li>"
	dat += "<li>Science: [user:science]</li>"
	dat += "<li>Repair: [user:repair]</li>"
	dat += "<li>Sneak: [user:sneak]</li>"
	dat += "<li>Speech: [user:speech]</li>"
	dat += "</ul>"
	var/datum/browser/popup = new(src, "special", "S.P.E.C.I.A.L", 440, 500)
	popup.add_stylesheet("playeroptions", 'html/browser/playeroptions.css')
	popup.set_content(dat)
	popup.open(1) // 0 is passed to open so that it doesn't use the onclose() proc
	src << browse(dat, "window=special;size=440x500;can_close=1")*/

/obj/item/weapon/special/attack_self(mob/living/carbon/human/H)
	if(!istype(H))
		return
	var/dat
	dat += "<div class='clearBoth'>How Special Are You?</div><br>"
	dat += "<ul>"
	dat += "<div class='sentance'>Attributes</div>"
	dat += "<li>Strength: [H:strength]</li>"
	dat += "<li>Agility: [H:agility]</li>"
	dat += "<li>Preception: [H:preception]</li>"
	dat += "<li>Intelligence: [H:intelligence]</li>"
	dat += "<li>Luck: [H:luck]</li>"
	dat += "<li>Dexterity: [H:dexterity]</li>"
	dat += "<li>Charisma: 0</li>"
	dat += "<div class='sentance'>Skills</div></li>"
	dat += "<li>Small Guns: [H:small_guns]</li>"
	dat += "<li>Big Guns: [H:big_guns]</li>"
	dat += "<li>Energy Weapons: [H:energy_weapons]</li>"
	dat += "<li>Melee: [H:melee_weapons]</li>"
	dat += "<li>Unarmed: [H:unarmed]</li>"
	dat += "<li>Barter: [H:barter]</li>"
	dat += "<li>Explosives: [H:explosives]</li>"
	dat += "<li>Security: [H:lockpick]</li>"
	dat += "<li>Medicine: [H:medicine]</li>"
	dat += "<li>Science: [H:science]</li>"
	dat += "<li>Repair: [H:repair]</li>"
	dat += "<li>Sneak: [H:sneak]</li>"
	dat += "<li>Speech: [H:speech]</li>"
	dat += "</ul>"
	var/datum/browser/popup = new(H, "special", "S.P.E.C.I.A.L", 440, 500)
	popup.add_stylesheet("playeroptions", 'html/browser/playeroptions.css')
	popup.set_content(dat)
	popup.open(0) // 0 is passed to open so that it doesn't use the onclose() proc
	//H << browse(dat, "window=special;size=440x500;can_close=1")