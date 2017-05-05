/*
Raider
*/
/datum/job/raider
	title = "Raider"
	flag = RAIDER
	department_flag = CIVILIAN
	faction = "Wasteland" //desert faction shall disable appearing as scavenger after readying
	status = "Raider"
	total_positions = 3
	donaters = 1
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

	suit_store = pick(/obj/item/weapon/gun/projectile/revolver/single_shotgun,\
		/obj/item/weapon/gun/projectile/revolver/caravan_shotgun)
	uniform = pick(/obj/item/clothing/under/f13/mercadv,\
		/obj/item/clothing/under/f13/merccharm)
	shoes = /obj/item/clothing/shoes/jackboots
	suit = pick(/obj/item/clothing/suit/armor/f13/supafly,\
		/obj/item/clothing/suit/armor/f13/bmetalarmor,\
		/obj/item/clothing/suit/armor/f13/yankee)
	head = /obj/item/clothing/head/helmet/f13/supaflyhelmet
	back = /obj/item/weapon/storage/backpack
	backpack = /obj/item/weapon/storage/backpack
	satchel = /obj/item/weapon/storage/backpack/satchel_norm
	backpack_contents = list(/obj/item/weapon/restraints/handcuffs=1,\
	/obj/item/weapon/pipe=1, \
	/obj/item/weapon/storage/wallet=1, \
	/obj/item/stack/coin/coins = 2)
	if (prob(50))
		glasses = /obj/item/clothing/glasses/sunglasses
	if (prob(80))
		l_hand = pick(/obj/item/weapon/hatchet)
