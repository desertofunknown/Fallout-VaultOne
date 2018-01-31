/obj/item/weapon/barbedbat
	name = "Barbed Bat"
	desc = "This fearsome barbed bat was handcrafted, isnt she lovely."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "barbedbat"
	item_state = "machete"
	flags = CONDUCT
	slot_flags = SLOT_BELT
	force = 15
	throwforce = 20
	w_class = 2
	hitsound = "swing_hit"
	attack_verb = list("bashed", "battered", "bludgeoned", "thrashed", "whacked")
	block_chance = 0
	burn_state = FLAMMABLE
	burntime = 20
	sharpness = IS_SHARP
	drawsound = 'sound/items/unholster_sword03.ogg'

/obj/item/weapon/spikedbat
	name = "Spiked Bat"
	desc = "This fearsome spiked bat was handcrafted, isnt she lovely."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "spikedbat"
	item_state = "machete"
	flags = CONDUCT
	slot_flags = SLOT_BELT
	force = 20
	throwforce = 25
	w_class = 3
	hitsound = "swing_hit"
	attack_verb = list("bashed", "battered", "bludgeoned", "thrashed", "whacked")
	block_chance = 0
	burn_state = FLAMMABLE
	burntime = 20
	sharpness = IS_SHARP
	drawsound = 'sound/items/unholster_sword03.ogg'

/obj/item/weapon/bladedbat
	name = "Maul Bat"
	desc = "This fearsome maul bat was handcrafted, isnt she lovely."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "bladedbat"
	item_state = "machete"
	flags = CONDUCT
	slot_flags = SLOT_BELT
	force = 40
	throwforce = 30
	w_class = 4
	sharpness = IS_SHARP
	hitsound = "swing_hit"
	attack_verb = list("bashed", "battered", "bludgeoned", "thrashed", "whacked")
	block_chance = 0
	burn_state = FLAMMABLE
	burntime = 20
	drawsound = 'sound/items/unholster_sword03.ogg'

/obj/item/weapon/serratedmachete
	name = "Serraded Machete"
	desc = "This fearsome serrated machete was handcrafted, isn't she lovely."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "serratedmachete"
	item_state = "machete"
	flags = CONDUCT
	slot_flags = SLOT_BELT
	force = 34
	throwforce = 10
	w_class = 3
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	block_chance = 20
	sharpness = IS_SHARP
	drawsound = 'sound/items/unholster_sword03.ogg'

/obj/item/weapon/shockingmachete
	name = "Shock Machete"
	desc = "This fearsome shock machete was handcrafted, isnt she lovely."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "machete"
	item_state = "machete"
	flags = CONDUCT
	slot_flags = SLOT_BELT
	force = 25
	throwforce = 10
	w_class = 3
	block_chance = 25
	sharpness = IS_SHARP
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	drawsound = 'sound/items/unholster_sword03.ogg'
	var/stunforce = 7
	var/status = 0
	var/obj/item/weapon/stock_parts/cell/high/bcell = null
	var/hitcost = 1000

/obj/item/weapon/melee/baton/update_icon()
	if(status)
		icon_state = "shockingmachete"
	else if(!bcell)
		icon_state = "machete"
	else
		icon_state = "machete"

/obj/item/weapon/shockingmachetebaton/New()
	..()
	update_icon()
	return

/obj/item/weapon/shockingmachete/CheckParts()
	bcell = locate(/obj/item/weapon/stock_parts/cell) in contents
	update_icon()

/obj/item/weapon/shockingmachete/loaded/New() //this one starts with a cell pre-installed.
	..()
	bcell = new(src)
	update_icon()
	return

/obj/item/weapon/shockingmachete/proc/deductcharge(chrgdeductamt)
	if(bcell)
		. = bcell.use(chrgdeductamt)
		if(bcell.charge >= hitcost) // If after the deduction the baton doesn't have enough charge for a stun hit it turns off.
			return
	if(status)
		status = 0
		update_icon()
		playsound(loc, "sparks", 75, 1, -1)
	return 0

/obj/item/weapon/shockingmachete/attackby(obj/item/weapon/W, mob/user, params)
	if(istype(W, /obj/item/weapon/stock_parts/cell))
		var/obj/item/weapon/stock_parts/cell/C = W
		if(bcell)
			user << "<span class='notice'>[src] already has a cell.</span>"
		else
			if(C.maxcharge < hitcost)
				user << "<span class='notice'>[src] requires a higher capacity cell.</span>"
				return
			if(!user.unEquip(W))
				return
			W.loc = src
			bcell = W
			user << "<span class='notice'>You install a cell in [src].</span>"
			update_icon()

	else if(istype(W, /obj/item/weapon/screwdriver))
		if(bcell)
			bcell.updateicon()
			bcell.loc = get_turf(src.loc)
			bcell = null
			user << "<span class='notice'>You remove the cell from [src].</span>"
			status = 0
			update_icon()
			return
		..()
	return

/obj/item/weapon/shockingmachete/attack_self(mob/user)
	if(bcell && bcell.charge > hitcost)
		status = !status
		user << "<span class='notice'>[src] is now [status ? "on" : "off"].</span>"
		playsound(loc, "sparks", 75, 1, -1)
	else
		status = 0
		if(!bcell)
			user << "<span class='warning'>[src] does not have a power source!</span>"
		else
			user << "<span class='warning'>[src] is out of charge.</span>"
	update_icon()
	add_fingerprint(user)

/obj/item/weapon/shockingmachete/attack(mob/M, mob/living/carbon/human/user)
	if(status && user.disabilities & CLUMSY && prob(50))
		user.visible_message("<span class='danger'>[user] accidentally hits themself with [src]!</span>", \
							"<span class='userdanger'>You accidentally hit yourself with [src]!</span>")
		user.Weaken(stunforce*3)
		deductcharge(hitcost)
		return

	if(isrobot(M))
		..()
		return
	if(!isliving(M))
		return

	var/mob/living/L = M

	if(user.a_intent != "harm")
		if(status)
			if(baton_stun(L, user))
				user.do_attack_animation(L)
				return
		else
			L.visible_message("<span class='warning'>[user] has prodded [L] with [src]. Luckily it was off.</span>", \
							"<span class='warning'>[user] has prodded you with [src]. Luckily it was off</span>")
	else
		if(status)
			baton_stun(L, user)
		..()


/obj/item/weapon/shockingmachete/proc/baton_stun(mob/living/L, mob/user)
	if(ishuman(L))
		var/mob/living/carbon/human/H = L
		if(H.check_shields(0, "[user]'s [name]", src, MELEE_ATTACK)) //No message; check_shields() handles that
			playsound(L, 'sound/weapons/Genhit.ogg', 50, 1)
			return 0
	if(isrobot(loc))
		var/mob/living/silicon/robot/R = loc
		if(!R || !R.cell || !R.cell.use(hitcost))
			return 0
	else
		if(!deductcharge(hitcost))
			return 0

	user.lastattacked = L
	L.lastattacker = user

	L.Stun(stunforce)
	L.Weaken(stunforce)
	L.apply_effect(STUTTER, stunforce)

	L.visible_message("<span class='danger'>[user] has stunned [L] with [src]!</span>", \
							"<span class='userdanger'>[user] has stunned you with [src]!</span>")
	playsound(loc, 'sound/weapons/Egloves.ogg', 50, 1, -1)

	if(ishuman(L))
		var/mob/living/carbon/human/H = L
		H.forcesay(hit_appends)

	add_logs(user, L, "stunned")
	return 1