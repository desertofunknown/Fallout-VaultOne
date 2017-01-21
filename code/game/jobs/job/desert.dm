/*
Scavenger
*/
/datum/job/scavenger
	title = "Scavenger"
	flag = SCAVENGER
	department_flag = CIVILIAN
	faction = "Desert" //desert faction shall disable appearing as scavenger after readying
	total_positions = -1
	spawn_positions = -1 //does not matter for late join
	supervisors = "nobody"
	selection_color = "#dddddd"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/scavenger

/datum/outfit/job/scavenger
	name = "Scavenger"
	id = null
	ears = null
	belt = null
	backpack = null
	satchel = null

/datum/outfit/job/scavenger/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/f13/brahmin,\
		/obj/item/clothing/under/f13/relaxedwearm,\
		/obj/item/clothing/under/f13/springm,\
		/obj/item/clothing/under/f13/caravaneer,\
		/obj/item/clothing/under/f13/roving)
	head = pick(/obj/item/clothing/head/hardhat,\
		/obj/item/clothing/head/welding)
	if (prob(50))
		glasses = /obj/item/clothing/glasses/sunglasses
	if (prob(80))
		l_hand = pick(/obj/item/weapon/kitchen/knife,\
			/obj/item/weapon/storage/toolbox/mechanical)
	back = /obj/item/weapon/storage/backpack
	backpack = /obj/item/weapon/storage/backpack
	satchel = /obj/item/weapon/storage/backpack/satchel_norm
	backpack_contents = list(/obj/item/weapon/reagent_containers/food/drinks/nukacola = 2,\
		/obj/item/weapon/reagent_containers/food/snacks/beans = 2,\
		/obj/item/weapon/storage/wallet=1, \
		/obj/item/stack/coin/bag = 1)

/*
Regulator
*/
/datum/job/regulator
	title = "Regulator"
	flag = REGULATOR
	department_flag = CIVILIAN
	faction = "Desert" //desert faction shall disable appearing as scavenger after readying
	total_positions = 4
	spawn_positions = -1 //does not matter for late join
	supervisors = "nobody"
	selection_color = "#dddddd"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/regulator

/datum/outfit/job/regulator
	name = "Regulator"
	id = null
	ears = null
	belt = null
	backpack = null
	satchel = null

/datum/outfit/job/regulator/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/f13/cowboyb,\
		/obj/item/clothing/under/f13/cowboyg)
	shoes = /obj/item/clothing/shoes/workboots
	suit = /obj/item/clothing/suit/armor/vest/det_suit
	head = /obj/item/clothing/head/fluff/cowboy
	//suit_store = /obj/item/weapon/gun/projectile/automatic/pistol/m1911
	suit_store = /obj/item/weapon/gun/projectile/shotgun/boltaction
	back = /obj/item/weapon/storage/backpack
	backpack = /obj/item/weapon/storage/backpack
	satchel = /obj/item/weapon/storage/backpack/satchel_norm
	backpack_contents = list(/obj/item/weapon/restraints/handcuffs=1, \
	/obj/item/weapon/storage/wallet=1, \
	/obj/item/stack/coin/coins = 1)

	if (prob(50))
		glasses = /obj/item/clothing/glasses/sunglasses
	if (prob(80))
		l_hand = pick(/obj/item/weapon/gun/projectile/shotgun,\
			/obj/item/weapon/melee/classic_baton)

/*
Raider
*/
/datum/job/raider
	title = "Raider"
	flag = RAIDER
	department_flag = CIVILIAN
	faction = "Desert" // This faction is used for late joins
	total_positions = 3
	spawn_positions = -1 //does not matter for late join
	supervisors = "nobody"
	selection_color = "#dddddd"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/raider

/datum/outfit/job/raider
	name = "Raider"
	id = null
	ears = null
	belt = null
	backpack = null
	satchel = null

/datum/outfit/job/raider/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/f13/mercadv,\
		/obj/item/clothing/under/f13/merccharm)
	shoes = /obj/item/clothing/shoes/jackboots
	suit = pick(/obj/item/clothing/suit/armor/f13/supafly,\
		/obj/item/clothing/suit/armor/f13/bmetalarmor,\
		/obj/item/clothing/suit/armor/f13/yankee)
	head = /obj/item/clothing/head/helmet/f13/supaflyhelmet
	suit_store = /obj/item/weapon/gun/projectile/revolver/doublebarrel/improvised
	backpack_contents = list(/obj/item/weapon/restraints/handcuffs=1,\
	/obj/item/weapon/pipe=1, \
	/obj/item/weapon/storage/wallet=1, \
	/obj/item/stack/coin/coins = 2)
	ears = /obj/item/clothing/ears/raider_mark
	back = /obj/item/weapon/storage/backpack
	backpack = /obj/item/weapon/storage/backpack
	satchel = /obj/item/weapon/storage/backpack/satchel_norm
	if (prob(50))
		glasses = /obj/item/clothing/glasses/sunglasses
	if (prob(80))
		l_hand = pick(/obj/item/weapon/hatchet)

/*
Settler
*/
/datum/job/settler
	title = "Settler"
	flag = SETTLER
	department_flag = CIVILIAN
	faction = "Desert" //desert faction shall disable appearing as scavenger after readying
	total_positions = -1
	spawn_positions = -1 //does not matter for late join
	supervisors = "nobody"
	selection_color = "#dddddd"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/settler

/datum/outfit/job/settler
	name = "Settler"
	id = null
	ears = null
	belt = null
	backpack = null
	satchel = null

/datum/outfit/job/settler/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/f13/settler,\
		/obj/item/clothing/under/f13/brahmin,\
		/obj/item/clothing/under/f13/machinist,\
		/obj/item/clothing/under/f13/lumberjack,\
		/obj/item/clothing/under/f13/roving)
	if (prob(50))
		glasses = /obj/item/clothing/glasses/sunglasses
	if (prob(80))
		l_hand = pick(/obj/item/weapon/kitchen/knife)


	if (prob(100))
		back = /obj/item/weapon/storage/backpack
		backpack = /obj/item/weapon/storage/backpack
		satchel = /obj/item/weapon/storage/backpack/satchel_norm
		backpack_contents = pick(list(/obj/item/device/analyzer/plant_analyzer = 1), \
			list(/obj/item/stack/cable_coil = 1), \
			list(/obj/item/stack/sheet/mineral/wood = 1), \
			list(/obj/item/stack/sheet/mineral/sandstone = 1))

/*
Wastelandmedic
*/
/datum/job/wastelandmedic
	title = "Wastelandmedic"
	flag = WASTELANDMEDIC
	department_flag = CIVILIAN
	faction = "Desert" //desert faction shall disable appearing as scavenger after readying
	total_positions = 4
	spawn_positions = -1 //does not matter for late join
	supervisors = "nobody"
	selection_color = "#dddddd"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/wastelandmedic

/datum/outfit/job/wastelandmedic
	name = "Wastelandmedic"
	id = null
	ears = null
	belt = null
	backpack = null
	satchel = null

/datum/outfit/job/wastelandmedic/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/f13/doctor)
	mask = /obj/item/clothing/mask/surgical
	gloves = /obj/item/clothing/gloves/color/white
	back = /obj/item/weapon/storage/backpack
	backpack = /obj/item/weapon/storage/backpack
	satchel = /obj/item/weapon/storage/backpack/satchel_norm
	backpack_contents = list(/obj/item/weapon/reagent_containers/pill/patch/stimpak=3, \
	/obj/item/weapon/reagent_containers/pill/patch/radaway=2, \
	/obj/item/weapon/storage/wallet=1, \
	/obj/item/stack/coin/coins = 1)
	if (prob(50))
		glasses = /obj/item/clothing/glasses/sunglasses
	if (prob(80))
		l_hand = pick(/obj/item/weapon/kitchen/knife)
