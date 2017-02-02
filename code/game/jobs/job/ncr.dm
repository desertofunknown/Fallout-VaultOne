/*
Trooper
*/
/datum/job/ncrlieutenant
	title = "NCR Lieutenant"
	flag = NCRLIEUTENANT
	department_head = list("NCR Lieutenant")
	department_flag = NCR
	faction = "NCR" // This faction is used for late joins
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of security"
	//spawn_point = locate(/obj/effect/landmark/start/ncr/commander)
	selection_color = "#ffeeee"
	access = list(access_powerplant)
	minimal_access = list(access_powerplant)
	outfit = /datum/outfit/job/ncrlieutenant

/datum/outfit/job/ncrlieutenant
	name = "NCR Lieutenant"
	id = /obj/item/weapon/card/id/ncr
	gloves = /obj/item/clothing/gloves/f13/legion/ncr
	uniform = /obj/item/clothing/under/f13/ncr
	shoes = /obj/item/clothing/shoes/combat/ncr
	belt = /obj/item/weapon/storage/belt/webbing/alt
	ears = /obj/item/device/radio/headset
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/mantle
	head = /obj/item/clothing/head/beret/ncr
	glasses = /obj/item/clothing/glasses/sunglasses/swat
	suit_store = /obj/item/weapon/gun/projectile/automatic/marksman
	backpack_contents = list(/obj/item/clothing/mask/facewrap=1, \
		/obj/item/ammo_box/magazine/m556_20=3, \
		/obj/item/weapon/kitchen/knife/combat=1, \
		/obj/item/weapon/gun/projectile/automatic/pistol/deagle=1)
/datum/outfit/job/ncrlieutenant/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	for(var/obj/item/device/radio/headset/h in H.contents)
		h.frequency=1350
	for(var/obj/item/weapon/card/id/ncr/n in H.contents)
		n.registered_name = H.real_name
		n.assignment = "[H.job]"
		//n.update_label(W.registered_name, W.assignment)
		n.name="[H.real_name] ([H.job])"
		n.access = list(access_powerplant)

/datum/job/ncrc
	title = "NCR Colonel"
	flag = NCRCOLONEL
	department_head = list("NCR Colonel")
	department_flag = NCR
	faction = "NCR" // This faction is used for late joins
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of security"
	//spawn_point = locate(/obj/effect/landmark/start/ncr/commander)
	selection_color = "#ffeeee"
	access = list(access_powerplant)
	minimal_access = list(access_powerplant)
	outfit = /datum/outfit/job/ncrcolonel

/datum/outfit/job/ncrcolonel
	id = /obj/item/weapon/card/id/ncr
	gloves = /obj/item/clothing/gloves/f13/legion/ncr
	uniform = /obj/item/clothing/under/f13/ncr
	shoes = /obj/item/clothing/shoes/combat/ncr
	belt = /obj/item/weapon/storage/belt/webbing/alt
	ears = /obj/item/device/radio/headset
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/mantle
	head = /obj/item/clothing/head/beret/ncr
	glasses = /obj/item/clothing/glasses/sunglasses/swat
	suit_store = /obj/item/weapon/gun/projectile/automatic/shotgun/pancor
	backpack_contents = list(/obj/item/clothing/mask/facewrap=1, \
		/obj/item/ammo_box/magazine/d12g=3, \
		/obj/item/weapon/kitchen/knife/combat=1, \
		/obj/item/weapon/gun/projectile/automatic/pistol/m1911/compact=1)
/datum/outfit/job/ncrcolonel/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	for(var/obj/item/device/radio/headset/h in H.contents)
		h.frequency=1350
	for(var/obj/item/weapon/card/id/ncr/n in H.contents)
		n.registered_name = H.real_name
		n.assignment = "[H.job]"
		//n.update_label(W.registered_name, W.assignment)
		n.name="[H.real_name] ([H.job])"
		n.access = list(access_powerplant)

/*
Sergeant
*/
/datum/job/ncrsergeant
	title = "NCR Sergeant"
	flag = NCRSERGEANT
	department_head = list("NCR Lieutenant")
	department_flag = NCR
	faction = "NCR" // This faction is used for late joins
	total_positions = 2
	spawn_positions = 2
	supervisors = "the head of security"
	//spawn_point = locate(/obj/effect/landmark/start/ncr/trooper)
	selection_color = "#ffeeee"
	access = list(access_powerplant)
	minimal_access = list(access_powerplant)
	outfit = /datum/outfit/job/ncrsergeant

/datum/outfit/job/ncrsergeant
	name = "NCR Sergeant"
	id = /obj/item/weapon/card/id/ncr
	gloves = /obj/item/clothing/gloves/f13/legion/ncr
	uniform = /obj/item/clothing/under/f13/ncr
	shoes = /obj/item/clothing/shoes/combat/ncr
	belt = /obj/item/weapon/storage/belt/ncr
	ears = /obj/item/device/radio/headset
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/mantle
	head = /obj/item/clothing/head/f13/ncr
	glasses = /obj/item/clothing/glasses/sunglasses/swat
	suit_store = /obj/item/weapon/gun/projectile/automatic/marksman/servicerifle
	backpack_contents = list(/obj/item/clothing/mask/facewrap=1, \
		/obj/item/ammo_box/magazine/m556_20=2, \
		/obj/item/weapon/kitchen/knife/combat=1)
/datum/outfit/job/ncrsergeant/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	for(var/obj/item/device/radio/headset/h in H.contents)
		h.frequency=1350
	for(var/obj/item/weapon/card/id/ncr/n in H.contents)
		n.registered_name = H.real_name
		n.assignment = "[H.job]"
		//n.update_label(W.registered_name, W.assignment)
		n.name="[H.real_name] ([H.job])"
		n.access = list(access_powerplant)

/*
Trooper
*/
/datum/job/ncrtrooper
	title = "NCR Trooper"
	flag = NCRTROOPER
	department_head = list("NCR Sergeant")
	department_flag = NCR
	faction = "NCR" // This faction is used for late joins
	total_positions = 10
	spawn_positions = 6
	supervisors = "the head of security"
	//spawn_point = locate(/obj/effect/landmark/start/ncr/trooper)
	selection_color = "#ffeeee"
	access = list(access_powerplant)
	minimal_access = list(access_powerplant)
	outfit = /datum/outfit/job/ncrtrooper

/datum/outfit/job/ncrtrooper
	name = "NCR Trooper"
	id = /obj/item/weapon/card/id/ncr
	gloves = /obj/item/clothing/gloves/f13/legion/ncr
	uniform = /obj/item/clothing/under/f13/ncr
	shoes = /obj/item/clothing/shoes/combat/ncr
	belt = /obj/item/weapon/storage/belt/ncr
	ears = /obj/item/device/radio/headset
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor
	head = /obj/item/clothing/head/f13/ncr
	glasses = /obj/item/clothing/glasses/sunglasses/swat
	suit_store = /obj/item/weapon/gun/projectile/automatic/marksman/servicerifle
	backpack_contents = list(/obj/item/clothing/mask/facewrap=1, \
		/obj/item/ammo_box/magazine/m556_20/surplus=2, \
		/obj/item/weapon/kitchen/knife/combat=1)
/datum/outfit/job/ncrtrooper/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	for(var/obj/item/device/radio/headset/h in H.contents)
		h.frequency=1350
	for(var/obj/item/weapon/card/id/ncr/n in H.contents)
		n.registered_name = H.real_name
		n.assignment = "[H.job]"
		//n.update_label(W.registered_name, W.assignment)
		n.name="[H.real_name] ([H.job])"
		n.access = list(access_powerplant)
/*
Recruit
*/
/datum/job/ncrrecruit
	title = "NCR Recruit"
	flag = NCRRECRUIT
	department_head = list("NCR Sergeant")
	department_flag = NCR
	faction = "Desert" // This faction is used for late joins
	total_positions = 10
	spawn_positions = -1
	supervisors = "the head of security"
	//spawn_point = locate(/obj/effect/landmark/start/ncr/trooper)
	selection_color = "#ffeeee"
	access = list(access_powerplant)
	minimal_access = list(access_powerplant)
	outfit = /datum/outfit/job/ncrrecruit

/datum/outfit/job/ncrrecruit
	name = "NCR Recruit"
	id = /obj/item/weapon/card/id/ncr
	gloves = /obj/item/clothing/gloves/f13/legion/ncr
	uniform = /obj/item/clothing/under/f13/ncr
	shoes = /obj/item/clothing/shoes/combat/ncr
	belt = /obj/item/weapon/storage/belt/ncr
	ears = /obj/item/device/radio/headset
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor
	head = /obj/item/clothing/head/f13/ncr
	glasses = /obj/item/clothing/glasses/sunglasses/swat
	suit_store = /obj/item/weapon/gun/projectile/shotgun/boltaction
	backpack_contents = list(/obj/item/ammo_box/a762=3, \
		/obj/item/clothing/mask/facewrap=1, \
		/obj/item/weapon/kitchen/knife/combat=1)

/datum/outfit/job/ncrtrooper/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	for(var/obj/item/device/radio/headset/h in H.contents)
		h.frequency=1350
	for(var/obj/item/weapon/card/id/ncr/n in H.contents)
		n.registered_name = H.real_name
		n.assignment = "NCR Recruit"
		//n.update_label(W.registered_name, W.assignment)
		n.name="[H.real_name] (NCR Recruit)"
		n.access = list(access_powerplant)

/*
Veteran Ranger
*/
/datum/job/ncrvetranger
	title = "NCR Veteran Ranger"
	flag = NCRVETRANGER
	department_head = list("NCR Sergeant")
	department_flag = NCR
	faction = "NCR"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of security"
	selection_color = "#ffeeee"
	minimal_player_age = 0
	//spawn_point = locate(/obj/effect/landmark/start/ncr/trooper)
	outfit = /datum/outfit/job/ncrvetranger

	access = list(access_powerplant)
	minimal_access = list(access_powerplant)

/datum/outfit/job/ncrvetranger
	name = "NCR Veteran Ranger"
	id = /obj/item/weapon/card/id/ncr/ranger
	gloves = /obj/item/clothing/gloves/combat
	uniform = /obj/item/clothing/under/f13/cowboyb
	shoes = /obj/item/clothing/shoes/combat/swat
	belt = /obj/item/weapon/storage/belt/webbing/alt
	ears = /obj/item/device/radio/headset
	suit = /obj/item/clothing/suit/armor/f13/rangercombat
	head = /obj/item/clothing/head/helmet/f13/rangercombat
	glasses = /obj/item/clothing/glasses/night
	suit_store = /obj/item/weapon/gun/projectile/automatic/assault_rifle
	backpack_contents = list(/obj/item/weapon/gun/projectile/revolver/sequoia=1, \
		/obj/item/ammo_box/c4570=2, \
		/obj/item/weapon/kitchen/knife/combat=1)
	mask = /obj/item/clothing/mask/gas/sechailer
/datum/outfit/job/ncrvetranger/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	for(var/obj/item/device/radio/headset/h in H.contents)
		h.frequency=1350
	for(var/obj/item/weapon/card/id/ncr/n in H.contents)
		n.registered_name = H.real_name
		n.assignment = "[H.job]"
		//n.update_label(W.registered_name, W.assignment)
		n.name="[H.real_name] ([H.job])"
		n.access = list(access_powerplant)
/*
NCR Ranger
*/
/datum/job/ncrranger
	title = "NCR Ranger"
	flag = NCRRANGER
	department_head = list("NCR Sergeant")
	department_flag = NCR
	faction = "NCR"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the head of security"
	selection_color = "#ffeeee"
	minimal_player_age = 0
	//spawn_point = locate(/obj/effect/landmark/start/ncr/trooper)
	outfit = /datum/outfit/job/ncrranger

	access = list(access_powerplant)
	minimal_access = list(access_powerplant)

/datum/outfit/job/ncrranger
	name = "NCR Ranger"
	id = /obj/item/weapon/card/id/ncr/ranger
	gloves = /obj/item/clothing/gloves/combat
	belt = /obj/item/weapon/storage/belt/webbing/alt
	ears = /obj/item/device/radio/headset
	uniform = /obj/item/clothing/under/f13/cowboyb
	shoes = /obj/item/clothing/shoes/combat/swat
	suit = /obj/item/clothing/suit/armor/f13/combat/ncr
	head = /obj/item/clothing/head/f13/ranger
	glasses = /obj/item/clothing/glasses/sunglasses
	suit_store = /obj/item/weapon/gun/projectile/automatic/shotgun/riot
	backpack_contents = list(/obj/item/weapon/gun/projectile/automatic/pistol/deagle=1, \
		/obj/item/weapon/restraints/handcuffs=2, \
		/obj/item/weapon/kitchen/knife/combat=1, \
		/obj/item/ammo_box/magazine/d12g=2)
/datum/outfit/job/ncrranger/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	for(var/obj/item/device/radio/headset/h in H.contents)
		h.frequency=1350
	for(var/obj/item/weapon/card/id/ncr/n in H.contents)
		n.registered_name = H.real_name
		n.assignment = "[H.job]"
		//n.update_label(W.registered_name, W.assignment)
		n.name="[H.real_name] ([H.job])"
		n.access = list(access_powerplant)
/datum/job/ncrrecranger
	title = "NCR Recruit Ranger"
	flag = NCRRECRANGER
	department_flag = NCR
	faction = "NCR" //desert faction shall disable appearing as scavenger after readying
	total_positions = 5
	spawn_positions = 5 //does not matter for late join
	supervisors = "the head of security"
	selection_color = "#ffeeee"
	minimal_player_age = 0
	access = list(access_powerplant)
	minimal_access = list(access_powerplant)
	outfit = /datum/outfit/job/ncrrecranger

/datum/outfit/job/ncrrecranger
	name = "NCR Recruit Ranger"
	id = /obj/item/weapon/card/id/ncr/ranger
	uniform = /obj/item/clothing/under/f13/ranger
	shoes = /obj/item/clothing/shoes/workboots
	head = /obj/item/clothing/head/fluff/cowboy
	back = /obj/item/weapon/storage/backpack
	belt = /obj/item/weapon/storage/belt/ncr
	gloves = /obj/item/clothing/gloves/combat
	glasses = /obj/item/clothing/glasses/sunglasses
	backpack = /obj/item/weapon/storage/backpack
	satchel = /obj/item/weapon/storage/backpack/satchel_norm
	backpack_contents = list(/obj/item/weapon/restraints/handcuffs=1, \
	/obj/item/weapon/storage/wallet=1, \
	/obj/item/stack/coin/coins = 1, \
	/obj/item/weapon/gun/projectile/revolver/m29=1, \
	/obj/item/ammo_box/m44=2, \
	/obj/item/weapon/gun/projectile/revolver/caravan_shotgun=1)
/datum/outfit/job/ncrrecranger/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	for(var/obj/item/device/radio/headset/h in H.contents)
		h.frequency=1350
	for(var/obj/item/weapon/card/id/ncr/n in H.contents)
		n.registered_name = H.real_name
		n.assignment = "[H.job]"
		//n.update_label(W.registered_name, W.assignment)
		n.name="[H.real_name] ([H.job])"
		n.access = list(access_powerplant)
/*/datum/job/detective
	title = "Wake up"
	flag = RANGER
	department_head = list("Head of Security")
	department_flag = NCR
	faction = "NCR"
	total_positions = 0
	spawn_positions = 0
	supervisors = "the head of security"
	selection_color = "#ffeeee"
	minimal_player_age = 0

	outfit = /datum/outfit/job/ncrranger

	access = list(access_powerplant)
	minimal_access = list(access_powerplant)*/