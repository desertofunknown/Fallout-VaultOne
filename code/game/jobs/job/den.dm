/datum/job/den/sheriff
	title = "Sheriff"
	flag = SHERIFF
	department_flag = DEN
	faction = "Den" //desert faction shall disable appearing as scavenger after readying
	status = "Sheriff"
	total_positions = 1
	spawn_positions = 1 //does not matter for late join
	donaters = 1
	donatorrank = 1
	supervisors = "nobody"
	selection_color = "#804B00"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/sheriff

/datum/outfit/job/sheriff
	name = "Sheriff"
	id = null
	ears = null
	belt = null
	backpack = null
	satchel = null

/datum/outfit/job/sheriff/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = /obj/item/clothing/under/f13/cowboyb
	shoes = /obj/item/clothing/shoes/workboots
	suit = /obj/item/clothing/suit/armor/vest/det_suit
	head = /obj/item/clothing/head/fluff/cowboy
	suit_store = /obj/item/weapon/gun/projectile/automatic/pistol/m1911
	glasses = /obj/item/clothing/glasses/sunglasses
	l_hand = /obj/item/weapon/gun/projectile/shotgun
	r_hand = /obj/item/weapon/special
	ears = /obj/item/device/radio/headset/headset_den
	H.GenStats()

/datum/job/den/settler
	title = "Settler"
	flag = SETTLER
	department_flag = DEN
	faction = "Den" //desert faction shall disable appearing as scavenger after readying
	status = "Member"
	total_positions = 10
	spawn_positions = 10 //does not matter for late join
	supervisors = "nobody"
	selection_color = "#804B00"
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
	l_hand = /obj/item/weapon/special
	ears = /obj/item/device/radio/headset/headset_den
	H.GenStats()