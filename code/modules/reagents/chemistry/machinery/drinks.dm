/obj/machinery/drinks
	name = "chem dispenser"
	desc = "Creates and dispenses chemicals."
	density = 1
	anchored = 1
	icon = 'icons/obj/chemical.dmi'
	icon_state = "dispenser"
	use_power = 1
	idle_power_usage = 40
	interact_offline = 1
	var/energy = 100
	var/max_energy = 100
	var/amount = 30
	var/recharged = 0
	var/recharge_delay = 5
	var/image/icon_beaker = null
	var/obj/item/weapon/reagent_containers/beaker = null
	var/list/dispensable_reagents = list(
		"sacid",
	)
/obj/machinery/drinks/fbeer
	name = "Buddy dispenser"
	anchored = 1
	icon = 'icons/obj/chemical.dmi'
	icon_state = "booze_dispenser"
	dispensable_reagents = list(
		"gammagulpbeer",
		"whiskey",
		"wine",
		"vodka",
		"rumnnuka",
		"wltequila",
		"moonshine",
	)
/obj/machinery/drinks/fsoda
	name = "Soda fountain"
	anchored = 1
	icon = 'icons/obj/chemical.dmi'
	icon_state = "soda_dispenser"
	amount = 10
	dispensable_reagents = list(
		"nuka_cola",
		"nuka_cola_q",
		"sunset_sarsaparilla",
	)


/obj/machinery/drinks/ui_interact(mob/user, ui_key = "main", datum/nanoui/ui = null, force_open = 0)
	ui = SSnano.try_update_ui(user, src, ui_key, ui, force_open = force_open)
	if (!ui)
		ui = new(user, src, ui_key, "chem_dispenser", name, 530, 700)
		ui.open()

/obj/machinery/drinks/get_ui_data()
	var/data = list()
	data["amount"] = amount
	data["energy"] = energy
	data["maxEnergy"] = max_energy
	data["isBeakerLoaded"] = beaker ? 1 : 0

	var beakerContents[0]
	var beakerCurrentVolume = 0
	if(beaker && beaker.reagents && beaker.reagents.reagent_list.len)
		for(var/datum/reagent/R in beaker.reagents.reagent_list)
			beakerContents.Add(list(list("name" = R.name, "volume" = R.volume))) // list in a list because Byond merges the first list...
			beakerCurrentVolume += R.volume
	data["beakerContents"] = beakerContents

	if (beaker)
		data["beakerCurrentVolume"] = beakerCurrentVolume
		data["beakerMaxVolume"] = beaker.volume
		data["beakerTransferAmounts"] = beaker.possible_transfer_amounts
	else
		data["beakerCurrentVolume"] = null
		data["beakerMaxVolume"] = null
		data["beakerTransferAmounts"] = null

	var chemicals[0]
	for(var/re in dispensable_reagents)
		var/datum/reagent/temp = chemical_reagents_list[re]
		if(temp)
			chemicals.Add(list(list("title" = temp.name, "id" = temp.id, "commands" = list("reagent" = temp.id))))
	data["chemicals"] = chemicals
	return data

/obj/machinery/drinks/ui_act(action, params)
	if(..())
		return

	switch(action)
		if("amount")
			amount = round(text2num(params["set"]), 5) // round to nearest 5
			if (amount < 0) // Since the user can actually type the commands himself, some sanity checking
				amount = 0
			if (amount > 100)
				amount = 100
		if("dispense")
			if(beaker && dispensable_reagents.Find(params["reagent"]))
				var/datum/reagents/R = beaker.reagents
				var/space = R.maximum_volume - R.total_volume

				R.add_reagent(params["reagent"], min(amount, energy * 10, space))
				energy = max(energy - min(amount, energy * 10, space) / 10, 0)
		if("remove")
			if(beaker)
				var/amount = text2num(params["amount"])
				if(isnum(amount) && (amount > 0) && (amount in beaker.possible_transfer_amounts))
					beaker.reagents.remove_all(amount)
		if("eject")
			if(beaker)
				beaker.loc = loc
				beaker = null
				overlays.Cut()
	return 1
/obj/machinery/drinks/interact(mob/user)
	if(stat & BROKEN)
		return
	ui_interact(user)
/obj/machinery/drinks/New()
	..()
	recharge()
	dispensable_reagents = sortList(dispensable_reagents)

/obj/machinery/drinks/power_change()
	if(powered())
		stat &= ~NOPOWER
	else
		spawn(rand(0, 15))
			stat |= NOPOWER

/obj/machinery/drinks/process()

	if(recharged < 0)
		recharge()
		recharged = recharge_delay
	else
		recharged -= 1

/obj/machinery/drinks/proc/recharge()
	if(stat & (BROKEN|NOPOWER)) return
	var/addenergy = 1
	var/oldenergy = energy
	energy = min(energy + addenergy, max_energy)
	if(energy != oldenergy)
		use_power(2500)

/obj/machinery/drinks/ex_act(severity, target)
	if(severity < 3)
		..()

/obj/machinery/chem_dispenser/blob_act()
	if(prob(50))
		qdel(src)

/obj/machinery/drinks/attackby(obj/item/I, mob/user)
	if(default_unfasten_wrench(user, I))
		return

	if (istype(I, /obj/item/weapon/reagent_containers/glass) || \
		istype(I, /obj/item/weapon/reagent_containers/food/drinks/drinkingglass) || \
		istype(I, /obj/item/weapon/reagent_containers/food/drinks/shaker))

		if (beaker)
			return 1
		else
			if(!user.drop_item())
				return 1
			src.beaker =  I
			beaker.loc = src
			update_icon()
			return