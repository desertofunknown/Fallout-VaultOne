/obj/item/stack/caps
	name = "bottle caps"
	singular_name = "bottle cap"
	desc = "A single bottle cap, taken from the top of a bottle, widely used as currency within the wastelands."
	icon = 'icons/obj/caps.dmi'
	icon_state = "cap"
	amount = 1
	max_amount = 20
	throwforce = 0
	throw_speed = 2
	throw_range = 2
	w_class = 1

/obj/item/stack/caps/New()
	..()
	update_icon()

/obj/item/stack/caps/update_icon()
	..()
	icon_state = "[amount]"
	if(amount == 1 && (istype(src.loc, /mob/living) || istype(src.loc, /obj/item/weapon/storage)))
		icon_state = "cap"

/obj/item/stack/caps/dropped()
	..()
	update_icon()

/obj/item/stack/caps/ten
	amount = 10
	icon_state = "10"

/obj/item/stack/caps/twenty
	amount = 20
	icon_state = "20"

/obj/item/stack/caps/random/New()
	amount = rand(1,max_amount)
	..()


/obj/item/stack/attack_hand(mob/user)
	if (user.get_inactive_hand() == src)
		if(zero_amount())	return
//		var/obj/item/stack/F = new src.type( user, 1)
//		. = F
		if(amount == 1)
			user.put_in_active_hand(src)
			return
		var/new_stack = input(user, "How much would you like to transfer?:\n(1-[amount])", "Stack Splitting") as num|null
		if(new_stack)
			var/obj/item/stack/F = new src.type( user, 1)
			. = F
			F.amount = max(min(round(text2num(new_stack)), amount),1)
			F.copy_evidences(src)
			user.put_in_hands(F)
			src.add_fingerprint(user)
			F.add_fingerprint(user)
			use(new_stack)
			if (src && usr.machine==src)
				spawn(0) src.interact(usr)
	else
		..()
	return



// /obj/item/weapon/reagent_containers/food/drinks/bottle
//	amount_per_transfer_from_this = 10
//	volume = 100
	item_state = "broken_beer" //Generic held-item sprite until unique ones are made.
//	var/const/duration = 13 //Directly relates to the 'weaken' duration. Lowered by armor (i.e. helmets)
//	var/isGlass = 1 //Whether the 'bottle' is made of glass or not so that milk cartons dont shatter when someone gets hit by it
//	var/opened = 0

// /obj/item/weapon/reagent_containers/food/drinks/bottle/attack_hand(mob/user)
//	if(!opened)
//		opened = !opened
//		user.visible_message("[user] pops the cap off of [src].")
//		var/obj/item/stack/caps/C = new /obj/item/stack/caps(src.loc)
//		C.pickup(user)
//		if(!user.put_in_active_hand(C))
//			C.dropped(user)
//		return
//	..()

// /obj/item/weapon/reagent_containers/food/drinks/bottle/examine(mob/user)
//	..()
//	if(opened)
//		user << "<span class='danger'>It's already been opened.</span>"