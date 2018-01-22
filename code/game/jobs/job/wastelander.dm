/datum/job/wasteland/wastelander
	title = "Wastelander"
	flag = WASTELANDER
	department_flag = WASTELAND
	faction = "Wasteland" //desert faction shall disable appearing as scavenger after readying
	status = "Wastelander"
	total_positions = 4
	spawn_positions = -1 //does not matter for late join
	supervisors = "nobody"
	selection_color = "#dddddd"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/wastelander

/datum/outfit/job/wastelander
	name = "Wastelander"
	id = null
	ears = null
	belt = null
	backpack = null
	satchel = null

/*
Wastelandwhore
*/
/*/datum/job/wastelandwhore
	title = "Whore"
	flag = WHORE
	department_flag = WASTELAND
	faction = "Wasteland" //desert faction shall disable appearing as scavenger after readying
	total_positions = 3
	spawn_positions = 3 //does not matter for late join
	supervisors = "pusher"
	selection_color = "#dddddd"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/wastelandwhore

/datum/outfit/job/wastelandwhore
	name = "Whore"
	id = null
	ears = null
	belt = null
	backpack = null
	satchel = null

/datum/outfit/job/wastelandwhore/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/f13/female/flapper)
	back = /obj/item/weapon/storage/backpack
	backpack = /obj/item/weapon/storage/backpack
	satchel = /obj/item/weapon/storage/backpack/satchel_norm
	backpack_contents = list(/obj/item/weapon/storage/wallet=1, \
	/obj/item/stack/coin/coins = 1)
	l_hand = /obj/item/weapon/switchblade

/*
Wastelandpusher
*/
/datum/job/pusher
	title = "Pusher"
	flag = PUSHER
	department_flag = WASTELAND
	faction = "Wasteland" //desert faction shall disable appearing as scavenger after readying
	total_positions = 1
	spawn_positions = 1 //does not matter for late join
	supervisors = "nobody"
	selection_color = "#dddddd"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/pusher

/datum/outfit/job/pusher
	name = "Pusher"
	id = null
	ears = null
	belt = null
	backpack = null
	satchel = null

/datum/outfit/job/pusher/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/f13/bennys)
	back = /obj/item/weapon/storage/backpack
	backpack = /obj/item/weapon/storage/backpack
	satchel = /obj/item/weapon/storage/backpack/satchel_norm
	backpack_contents = list(/obj/item/weapon/storage/wallet=1, \
	/obj/item/stack/coin/coins = 4)*/


/datum/outfit/job/wastelander/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/f13/settler,\
		/obj/item/clothing/under/f13/brahmin,\
		/obj/item/clothing/under/f13/machinist,\
		/obj/item/clothing/under/f13/lumberjack,\
		/obj/item/clothing/under/f13/roving)
//	mask = /obj/item/clothing/mask/surgical
//	gloves = /obj/item/clothing/gloves/color/white
	l_pocket = /obj/item/weapon/reagent_containers/food/drinks/flask/survival
	r_pocket = /obj/item/device/flashlight/flare/torch
	belt = pick (simple_start_weapon)
	//back = /obj/item/weapon/storage/backpack
	backpack = /obj/item/weapon/storage/backpack
	//satchel = /obj/item/weapon/storage/backpack/satchel_norm
	backpack_contents = list(/obj/item/weapon/reagent_containers/stimpak/regular=3, \
	/obj/item/weapon/reagent_containers/blood/radaway=2, \
	/obj/item/weapon/storage/wallet=1, \
	/obj/item/weapon/reagent_containers/food/drinks/flask/survival=1, \
	/obj/item/stack/coin/coins = 1, \
	/obj/item/device/flashlight/flare/torch=1, \
	/obj/item/weapon/special=1)
	H.GenStats()
//	if (prob(80))
//		l_hand = pick(/obj/item/weapon/kitchen/knife)
//Due to how large this one is it gets its own file
/*
Chaplain
*/

/datum/job/chaplain
	title = "Preacher"
	flag = PREACHER
	//department_head = list("Head of Personnel")
	department_flag = WASTELAND
	faction = "Wasteland"
	total_positions = 1
	spawn_positions = 1
	supervisors = "God"
	selection_color = "#dddddd"

	outfit = /datum/outfit/job/preacher

	access = list(access_morgue, access_chapel_office, access_crematorium, access_theatre)
	minimal_access = list(access_morgue, access_chapel_office, access_crematorium, access_theatre)

/datum/outfit/job/preacher
	name = "Preacher"

	gloves = /obj/item/clothing/gloves/pda/chaplain
	uniform = /obj/item/clothing/under/f13/vault/v13
	backpack_contents = list(/obj/item/device/camera/spooky = 1, \
	/obj/item/device/flashlight/flare/torch=1, \
	/obj/item/weapon/special=1)


/datum/outfit/job/preacher/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()

	if(visualsOnly)
		return
	H.GenStats()
	var/obj/item/weapon/storage/book/bible/B = new /obj/item/weapon/storage/book/bible/booze(H)
	var/new_religion = "Christianity"
	if(H.client && H.client.prefs.custom_names["religion"])
		new_religion = H.client.prefs.custom_names["religion"]

	switch(lowertext(new_religion))
		if("christianity")
			B.name = pick("The Holy Bible","The Dead Sea Scrolls")
		if("satanism")
			B.name = "The Unholy Bible"
		if("cthulu")
			B.name = "The Necronomicon"
		if("islam")
			B.name = "Quran"
		if("scientology")
			B.name = pick("The Biography of L. Ron Hubbard","Dianetics")
		if("chaos")
			B.name = "The Book of Lorgar"
		if("imperium")
			B.name = "Uplifting Primer"
		if("toolboxia")
			B.name = "Toolbox Manifesto"
		if("homosexuality")
			B.name = "Guys Gone Wild"
		if("lol", "wtf", "gay", "penis", "ass", "poo", "badmin", "shitmin", "deadmin", "cock", "cocks")
			B.name = pick("Woodys Got Wood: The Aftermath", "War of the Cocks", "Sweet Bro and Hella Jef: Expanded Edition")
			H.setBrainLoss(100) // starts off retarded as fuck
		if("science")
			B.name = pick("Principle of Relativity", "Quantum Enigma: Physics Encounters Consciousness", "Programming the Universe", "Quantum Physics and Theology", "String Theory for Dummies", "How To: Build Your Own Warp Drive", "The Mysteries of Bluespace", "Playing God: Collector's Edition")
		else
			B.name = "The Holy Book of [new_religion]"
	feedback_set_details("religion_name","[new_religion]")
	ticker.Bible_name = B.name

	var/new_deity = "Space Jesus"
	if(H.client && H.client.prefs.custom_names["deity"])
		new_deity = H.client.prefs.custom_names["deity"]
	B.deity_name = new_deity

	if(ticker)
		ticker.Bible_deity_name = B.deity_name
	feedback_set_details("religion_deity","[new_deity]")
	H.equip_to_slot_or_del(B, slot_in_backpack)
