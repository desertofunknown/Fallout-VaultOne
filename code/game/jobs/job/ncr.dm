/*
Trooper
*/
/datum/job/ncrlieutenant
	title = "NCR Lieutenant"
	flag = NCRLIEUTENANT
	department_head = list("Head of Security")
	department_flag = ENGSEC
	faction = "Vault" // This faction is used for late joins
	total_positions = 1
	spawn_positions = 1
	supervisors = "the NCR Commander"
	//spawn_point = locate(/obj/effect/landmark/start/ncr/commander)
	selection_color = "#ffeeee"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/ncrlieutenant

/datum/outfit/job/ncrlieutenant
	name = "NCR Lieutenant"
	id = /obj/item/weapon/card/id/ncr
	gloves = /obj/item/clothing/gloves/f13/legion/ncr
	uniform = /obj/item/clothing/under/f13/ncr
	shoes = /obj/item/clothing/shoes/combat/ncr
	belt = /obj/item/weapon/storage/belt/ncr
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/mantle
	head = /obj/item/clothing/head/beret/ncr
	glasses = /obj/item/clothing/glasses/sunglasses/swat
	suit_store = /obj/item/weapon/gun/projectile/automatic/marksman/servicerifle
	backpack_contents = list(/obj/item/clothing/mask/facewrap=1, \
		/obj/item/ammo_box/magazine/m556_20=2, \
		/obj/item/weapon/kitchen/knife/combat=1, \
		/obj/item/weapon/gun/projectile/automatic/pistol/m1911=1)
/*
Sergeant
*/
/datum/job/ncrsergeant
	title = "NCR Sergeant"
	flag = NCRSERGEANT
	department_head = list("NCR Lieutenant")
	department_flag = ENGSEC
	faction = "Vault" // This faction is used for late joins
	total_positions = 2
	spawn_positions = 2
	supervisors = "the NCR Lieutenant and Commander"
	//spawn_point = locate(/obj/effect/landmark/start/ncr/trooper)
	selection_color = "#ffeeee"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/ncrsergeant

/datum/outfit/job/ncrsergeant
	name = "NCR Sergeant"
	id = /obj/item/weapon/card/id/ncr
	gloves = /obj/item/clothing/gloves/f13/legion/ncr
	uniform = /obj/item/clothing/under/f13/ncr
	shoes = /obj/item/clothing/shoes/combat/ncr
	belt = /obj/item/weapon/storage/belt/ncr
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/mantle
	head = /obj/item/clothing/head/f13/ncr
	glasses = /obj/item/clothing/glasses/sunglasses/swat
	suit_store = /obj/item/weapon/gun/projectile/automatic/marksman/servicerifle
	backpack_contents = list(/obj/item/clothing/mask/facewrap=1, \
		/obj/item/ammo_box/magazine/m556_20=2, \
		/obj/item/weapon/kitchen/knife/combat=1)
/*
Trooper
*/
/datum/job/ncrtrooper
	title = "NCR Trooper"
	flag = NCRTROOPER
	department_head = list("NCR Lieutenant")
	department_flag = ENGSEC
	faction = "Vault" // This faction is used for late joins
	total_positions = 10
	spawn_positions = 12
	supervisors = "the NCR Lieutenant, Commander and Sergeant"
	//spawn_point = locate(/obj/effect/landmark/start/ncr/trooper)
	selection_color = "#ffeeee"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/ncrtrooper

/datum/outfit/job/ncrtrooper
	name = "NCR Trooper"
	id = /obj/item/weapon/card/id/ncr
	gloves = /obj/item/clothing/gloves/f13/legion/ncr
	uniform = /obj/item/clothing/under/f13/ncr
	shoes = /obj/item/clothing/shoes/combat/ncr
	belt = /obj/item/weapon/storage/belt/ncr
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor
	head = /obj/item/clothing/head/f13/ncr
	glasses = /obj/item/clothing/glasses/sunglasses/swat
	suit_store = /obj/item/weapon/gun/projectile/automatic/marksman/servicerifle
	backpack_contents = list(/obj/item/clothing/mask/facewrap=1, \
		/obj/item/ammo_box/magazine/m556_20/surplus=2, \
		/obj/item/weapon/kitchen/knife/combat=1)
/*
Recruit
*/
/datum/job/ncrrecruit
	title = "NCR Recruit"
	flag = NCRRECRUIT
	department_head = list("NCR Lieutenant")
	department_flag = ENGSEC
	faction = "Vault" // This faction is used for late joins
	total_positions = 10
	spawn_positions = 12
	supervisors = "all NCR personnel higher rank than you"
	//spawn_point = locate(/obj/effect/landmark/start/ncr/trooper)
	selection_color = "#ffeeee"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/ncrrecruit

/datum/outfit/job/ncrrecruit
	name = "NCR Recruit"
	id = /obj/item/weapon/card/id/ncr
	gloves = /obj/item/clothing/gloves/f13/legion/ncr
	uniform = /obj/item/clothing/under/f13/ncr
	shoes = /obj/item/clothing/shoes/combat/ncr
	belt = /obj/item/weapon/storage/belt/ncr
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor
	head = /obj/item/clothing/head/f13/ncr
	glasses = /obj/item/clothing/glasses/sunglasses/swat
	suit_store = /obj/item/weapon/gun/projectile/shotgun/boltaction
	backpack_contents = list(/obj/item/ammo_box/a762=1, \
		/obj/item/clothing/mask/facewrap=1, \
		/obj/item/weapon/kitchen/knife/combat=1)
/*
Veteran Ranger
*/
/datum/job/ncrvetranger
	title = "NCR Veteran Ranger"
	flag = NCRVETRANGER
	department_head = list("NCR Lieutenant")
	department_flag = ENGSEC
	faction = "Vault"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the NCR Commander and Chief Ranger"
	selection_color = "#ffeeee"
	minimal_player_age = 7
	//spawn_point = locate(/obj/effect/landmark/start/ncr/trooper)
	outfit = /datum/outfit/job/ncrvetranger

	access = list()
	minimal_access = list()

/datum/outfit/job/ncrvetranger
	name = "NCR Veteran Ranger"
	id = /obj/item/weapon/card/id/ncr/ranger
	gloves = /obj/item/clothing/gloves/combat
	uniform = /obj/item/clothing/under/f13/cowboyb
	shoes = /obj/item/clothing/shoes/combat/swat
	belt = /obj/item/weapon/storage/belt/ncr
	suit = /obj/item/clothing/suit/armor/f13/rangercombat
	head = /obj/item/clothing/head/helmet/f13/rangercombat
	glasses = /obj/item/clothing/glasses/night
	suit_store = /obj/item/weapon/gun/projectile/automatic/assault_rifle
	backpack_contents = list(/obj/item/weapon/gun/projectile/revolver/sequoia=1, \
		/obj/item/ammo_box/c4570=2, \
		/obj/item/weapon/melee/classic_baton/telescopic=1, \
		/obj/item/weapon/kitchen/knife/combat=1)
	mask = /obj/item/clothing/mask/gas/sechailer
/*
NCR Ranger
*/
/datum/job/ncrranger
	title = "NCR Ranger"
	flag = NCRRANGER
	department_head = list("NCR Lieutenant")
	department_flag = ENGSEC
	faction = "Vault"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the NCR Commander, Veteran Ranger and Chief Ranger"
	selection_color = "#ffeeee"
	minimal_player_age = 7
	//spawn_point = locate(/obj/effect/landmark/start/ncr/trooper)
	outfit = /datum/outfit/job/ncrranger

	access = list()
	minimal_access = list()

/datum/outfit/job/ncrranger
	name = "NCR Ranger"
	id = /obj/item/weapon/card/id/ncr/ranger
	gloves = /obj/item/clothing/gloves/combat
	belt = /obj/item/weapon/storage/belt/ncr
	uniform = /obj/item/clothing/under/f13/cowboyb
	shoes = /obj/item/clothing/shoes/combat/swat
	suit = /obj/item/clothing/suit/armor/f13/combat/ncr
	head = /obj/item/clothing/head/f13/ranger
	glasses = /obj/item/clothing/glasses/sunglasses
	suit_store = /obj/item/weapon/gun/projectile/shotgun/riot
	backpack_contents = list(/obj/item/weapon/gun/projectile/automatic/pistol/deagle=1, \
		/obj/item/weapon/restraints/handcuffs=2, \
		/obj/item/weapon/kitchen/knife/combat=1, \
		/obj/item/weapon/melee/classic_baton/telescopic=1, \
		/obj/item/weapon/storage/box/lethalshot=1)

/datum/job/detective
	title = "Wake up"
	//flag = RANGER
	department_head = list("NCR Commander")
	department_flag = ENGSEC
	faction = "NCR"
	total_positions = 0
	spawn_positions = 0
	supervisors = "the head of security"
	selection_color = "#ffeeee"
	minimal_player_age = 7

	outfit = /datum/outfit/job/ncrranger

	access = list()
	minimal_access = list()