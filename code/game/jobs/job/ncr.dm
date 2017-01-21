/*
Trooper
*/
/datum/job/ncrc
	title = "NCR Commander"
	flag = NCRCOMMANDER
	department_head = list("Head of Security")
	department_flag = ENGSEC
	faction = "NCR" // This faction is used for late joins
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of security"
	//spawn_point = locate(/obj/effect/landmark/start/ncr/commander)
	selection_color = "#ffeeee"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/ncr_commander
/*
Trooper
*/
/datum/job/ncr
	title = "NCR Trooper"
	flag = NCRTROOPER
	department_head = list("Head of Security")
	department_flag = ENGSEC
	faction = "NCR" // This faction is used for late joins
	total_positions = 10
	spawn_positions = 10
	supervisors = "the head of security"
	//spawn_point = locate(/obj/effect/landmark/start/ncr/trooper)
	selection_color = "#ffeeee"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/ncr_trooper
/*
Ranger
*/
/datum/job/ranger
	title = "NCR Ranger"
	flag = RANGER
	department_head = list("Head of Security")
	department_flag = ENGSEC
	faction = "NCR"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the head of security"
	selection_color = "#ffeeee"
	minimal_player_age = 7
	//spawn_point = locate(/obj/effect/landmark/start/ncr/trooper)
	outfit = /datum/outfit/job/ranger

	access = list()
	minimal_access = list()

/datum/outfit/job/ranger
	name = "Ranger"
	gloves = /obj/item/clothing/gloves/combat
	uniform = /obj/item/clothing/under/f13/cowboyb
	shoes = /obj/item/clothing/shoes/combat/swat
	suit = /obj/item/clothing/suit/armor/f13/rangercombat
	head = /obj/item/clothing/head/helmet/f13/rangercombat
	glasses = /obj/item/clothing/glasses/night
	suit_store = /obj/item/weapon/gun/projectile/automatic/assault_rifle
	backpack_contents = list(/obj/item/weapon/gun/projectile/automatic/pistol/deagle = 1, \
		/obj/item/weapon/restraints/handcuffs=2, \
		/obj/item/weapon/melee/classic_baton/telescopic=1)
	mask = /obj/item/clothing/mask/gas/sechailer

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

	outfit = /datum/outfit/job/ranger

	access = list()
	minimal_access = list()