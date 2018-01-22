/obj/structure/cross
	name = "Cross"
	layer = 4.1
	pixel_x = -3
	icon = 'icons/obj/flags.dmi'
	icon_state = "emptyflag"
	desc = "A cross used by the legion to hang profligates."
	density = 1
	anchored = 1
	buckle_lying = 0
	can_buckle = 1


/obj/structure/cross/attack_paw(mob/user)
	return src.attack_hand(usr)


/obj/structure/cross/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/weapon/wrench))
		if(!src.buckled_mob)
			playsound(loc, 'sound/items/Ratchet.ogg', 100, 1)
			if(do_after(user, 20/I.toolspeed, target = src))
				user << "<span class='notice'>You begin dismanteling the cross.</span>"
				new /obj/item/stack/sheet/metal(loc, 10)
				qdel(src)
		else
			user << "<span class='notice'>You can't do that while something's on the cross!</span>"
		return
	if(istype(I, /obj/item/weapon/grab))
		var/obj/item/weapon/grab/G = I
		if(istype(G.affecting, /mob/living/))
			if(!buckled_mob)
				if(do_mob(user, src, 120))
					if(buckled_mob) //to prevent spam/queing up attacks
						return
					if(G.affecting.buckled)
						return
					var/mob/living/H = G.affecting
					playsound(src.loc, "sound/effects/splat.ogg", 25, 1)
					H.visible_message("<span class='danger'>[user] hangs [G.affecting] onto the the cross!</span>", "<span class='userdanger'>[user] hangs you onto the cross!</span>", "<span class='italics'>You hear a squishy wet noise as the nails are drilled into your hands and feet.</span>")
					H.loc = src.loc
					H.emote("scream")
					H.emote("scream")
					H.emote("scream")
					H.emote("scream")
					H.emote("scream")
					if(istype(H, /mob/living/carbon/human)) //So you don't get human blood when you spike a giant spidere
						var/turf/pos = get_turf(H)
						pos.add_blood_floor(H)
					H.adjustBruteLoss(30)
					H.buckled = src
					H.dir = 2
					buckled_mob = H
					//var/matrix/m180 = matrix(H.transform)
					//m180.Turn(180)
					//animate(H, transform = m180, time = 3)
					H.pixel_y = 32
					H.layer = 4.2
					return
		user << "<span class='danger'>You can't use that on the cross!</span>"
		return
	..()

/obj/structure/cross/user_buckle_mob(mob/living/M, mob/living/user) //Don't want them getting put on the rack other than by spiking
	return

/obj/structure/cross/user_unbuckle_mob(mob/living/carbon/human/user)
	if(buckled_mob && buckled_mob.buckled == src)
		var/mob/living/M = buckled_mob
		if(M != user)
			M.visible_message(\
				"[user.name] tries to pull [M.name] free of the [src]!",\
				"<span class='notice'>[user.name] is trying to pull you off the [src], opening up fresh wounds!</span>",\
				"<span class='italics'>You hear a squishy wet noise.</span>")
			if(!do_after(user, 300, target = src))
				if(M && M.buckled)
					M.visible_message(\
					"[user.name] fails to free [M.name]!",\
					"<span class='notice'>[user.name] fails to pull you off of the [src].</span>")
				return

		else
			M.visible_message(\
			"<span class='warning'>[M.name] struggles to break free from the [src]!</span>",\
			"<span class='notice'>You struggle to break free from the [src], exacerbating your wounds! (Stay still for two minutes.)</span>",\
			"<span class='italics'>You hear a wet squishing noise..</span>")
			M.adjustBruteLoss(30)
			if(!do_after(M, 1200, target = src))
				if(M && M.buckled)
					M << "<span class='warning'>You fail to free yourself!</span>"
				return
		if(!M.buckled)
			return
		//var/matrix/m180 = matrix(M.transform)
		//m180.Turn(180)
		//animate(M, transform = m180, time = 3)
		//M.pixel_y = M.get_standard_pixel_y_offset(180)
		M.pixel_y = 0
		M.layer = 4
		M.adjustBruteLoss(30)
		src.visible_message(text("<span class='danger'>[M] falls free of the [src]!</span>"))
		unbuckle_mob()
		M.emote("scream")
		M.emote("scream")
		M.emote("scream")
		M.emote("scream")
		M.emote("scream")
		M.AdjustWeakened(10)


/obj/structure/woodencross
	name = "Wooden Cross"
	layer = 4.1
	pixel_x = -3
	icon = 'icons/obj/cross.dmi'
	icon_state = "cross"
	desc = "A wooden cross used by the legion to hang profligates."
	density = 1
	anchored = 1
	buckle_lying = 0
	can_buckle = 1


/obj/structure/woodencross/attack_paw(mob/user)
	return src.attack_hand(usr)


/obj/structure/woodencross/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/weapon/wrench))
		if(!src.buckled_mob)
			playsound(loc, 'sound/items/Ratchet.ogg', 100, 1)
			if(do_after(user, 20/I.toolspeed, target = src))
				user << "<span class='notice'>You begin dismanteling the cross.</span>"
				new /obj/item/stack/sheet/mineral/wood(loc, 10)
				qdel(src)
		else
			user << "<span class='notice'>You can't do that while something's on the cross!</span>"
		return
	if(istype(I, /obj/item/weapon/grab))
		var/obj/item/weapon/grab/G = I
		if(istype(G.affecting, /mob/living/))
			if(!buckled_mob)
				if(do_mob(user, src, 120))
					if(buckled_mob) //to prevent spam/queing up attacks
						return
					if(G.affecting.buckled)
						return
					var/mob/living/H = G.affecting
					playsound(src.loc, "sound/effects/splat.ogg", 25, 1)
					H.visible_message("<span class='danger'>[user] hangs [G.affecting] onto the the cross!</span>", "<span class='userdanger'>[user] hangs you onto the cross!</span>", "<span class='italics'>You hear a squishy wet noise as the nails are drilled into your hands and feet.</span>")
					H.loc = src.loc
					H.emote("scream")
					H.emote("scream")
					H.emote("scream")
					H.emote("scream")
					H.emote("scream")
					if(istype(H, /mob/living/carbon/human)) //So you don't get human blood when you spike a giant spidere
						var/turf/pos = get_turf(H)
						pos.add_blood_floor(H)
					H.adjustBruteLoss(30)
					H.buckled = src
					H.dir = 2
					buckled_mob = H
					H.pixel_y = 28
					H.pixel_x = -3
					H.layer = 4.2
					return
		user << "<span class='danger'>You can't use that on the cross!</span>"
		return
	..()

/obj/structure/woodencross/user_buckle_mob(mob/living/M, mob/living/user) //Don't want them getting put on the rack other than by spiking
	return

/obj/structure/woodencross/user_unbuckle_mob(mob/living/carbon/human/user)
	if(buckled_mob && buckled_mob.buckled == src)
		var/mob/living/M = buckled_mob
		if(M != user)
			M.visible_message(\
				"[user.name] tries to pull [M.name] free of the [src]!",\
				"<span class='notice'>[user.name] is trying to pull you off the [src], opening up fresh wounds!</span>",\
				"<span class='italics'>You hear a squishy wet noise.</span>")
			if(!do_after(user, 300, target = src))
				if(M && M.buckled)
					M.visible_message(\
					"[user.name] fails to free [M.name]!",\
					"<span class='notice'>[user.name] fails to pull you off of the [src].</span>")
				return

		else
			M.visible_message(\
			"<span class='warning'>[M.name] struggles to break free from the [src]!</span>",\
			"<span class='notice'>You struggle to break free from the [src], exacerbating your wounds! (Stay still for two minutes.)</span>",\
			"<span class='italics'>You hear a wet squishing noise..</span>")
			M.adjustBruteLoss(30)
			if(!do_after(M, 1200, target = src))
				if(M && M.buckled)
					M << "<span class='warning'>You fail to free yourself!</span>"
				return
		if(!M.buckled)
			return
		//var/matrix/m180 = matrix(M.transform)
		//m180.Turn(180)
		//animate(M, transform = m180, time = 3)
		//M.pixel_y = M.get_standard_pixel_y_offset(180)
		M.pixel_y = 0
		M.pixel_x = 0
		M.layer = 4
		M.adjustBruteLoss(30)
		src.visible_message(text("<span class='danger'>[M] falls free of the [src]!</span>"))
		unbuckle_mob()
		M.emote("scream")
		M.emote("scream")
		M.emote("scream")
		M.emote("scream")
		M.emote("scream")
		M.AdjustWeakened(10)