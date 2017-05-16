var/const/MESSIAH			=(1<<50)
var/const/SLIMEMAN			=(1<<51)
var/const/BOSI			=(1<<52)
var/const/BOSK			=(1<<53)
var/const/BOSS			=(1<<54)
var/const/BOSP			=(1<<55)
//SourcePony
/datum/job/messiah
	title = "Messiah"
	flag = MESSIAH
	department_head = list("Head of Security")
	department_flag = ENGSEC
	faction = "Wasteland"
	status = "Messiah"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of security"
	selection_color = "#ffddf0"
	minimal_player_age = 7
	donaters = 1
	donatorrank = 3
	outfit = /datum/outfit/job/messiah

	access = list()
	minimal_access = list()

/datum/outfit/job/messiah
	name = "Messiah"
	id = null
	gloves = /obj/item/clothing/gloves/combat
	uniform = /obj/item/clothing/under/f13/cowboyb
	shoes = /obj/item/clothing/shoes/combat/swat
	suit = /obj/item/clothing/suit/armor/f13/rangercombat
	head = /obj/item/clothing/head/helmet/f13/rangercombat
	glasses = /obj/item/clothing/glasses/night
	suit_store = /obj/item/weapon/gun/projectile/automatic/assault_rifle
	backpack_contents = list(/obj/item/weapon/restraints/handcuffs=2, \
		/obj/item/weapon/reagent_containers/stimpak/regular = 2, \
		/obj/item/weapon/reagent_containers/food/drinks/flask/survival=1)
	mask = /obj/item/clothing/mask/gas/sechailer
	ears = /obj/item/device/radio/headset

//SourcePony
/datum/job/slimeman
	title = "Slime Dude"
	flag = MESSIAH
	department_head = list("Head of Security")
	department_flag = ENGSEC
	faction = "Wasteland"
	status = "Wastelander"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of security"
	selection_color = "#ffddf0"
	minimal_player_age = 7
	donaters = 1
	donatorrank = 3
	outfit = /datum/outfit/job/slimeman

	access = list()
	minimal_access = list()

/datum/outfit/job/slimeman
	name = "Slime Dude"
	id = null
	uniform = /obj/item/clothing/under/rank/scientist
	shoes = /obj/item/clothing/shoes/sneakers/black
	suit = /obj/item/clothing/suit/armor/f13/rangercombat
	head = /obj/item/clothing/head/helmet/f13/rangercombat
	glasses = /obj/item/clothing/glasses/night
	suit_store = /obj/item/weapon/gun/projectile/automatic/assault_rifle
	backpack_contents = list(/obj/item/weapon/restraints/handcuffs=2, \
		/obj/item/weapon/reagent_containers/stimpak/regular = 2, \
		/obj/item/weapon/reagent_containers/food/drinks/flask/survival=1)
	mask = /obj/item/clothing/mask/gas/sechailer
	ears = /obj/item/device/radio/headset

//SEPERATED

/datum/job/bosinitiate
	title = "Initiate"
	flag = BOSI
	department_head = list("Head of Security")
	department_flag = ENGSEC
	faction = "BOS"
	status = "Initiate"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the head of security"
	selection_color = "#ffddf0"
	minimal_player_age = 7
	donaters = 1
	donatorrank = 3
	outfit = /datum/outfit/bos_initiate

	access = list(73)
	minimal_access = list(73)


//SourcePony

/datum/job/bosscribe
	title = "Scribe"
	flag = BOSS
	department_head = list("Head of Security")
	department_flag = ENGSEC
	faction = "BOS"
	status = "Scribe"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Paladin"
	selection_color = "#ffddf0"
	minimal_player_age = 7
	donaters = 1
	donatorrank = 3
	outfit = /datum/outfit/bos_scribe

	access = list(73)
	minimal_access = list(73)

/datum/job/bosknight
	title = "Knight"
	flag = BOSK
	department_head = list("Head of Security")
	department_flag = ENGSEC
	faction = "BOS"
	status = "Knight"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Paladin"
	selection_color = "#ffddf0"
	minimal_player_age = 7
	donaters = 1
	donatorrank = 4
	outfit = /datum/outfit/bos_knight

	access = list(73)
	minimal_access = list(73)

/datum/job/bospaladin
	title = "Paladin"
	flag = BOSP
	department_head = list("Head of Security")
	department_flag = ENGSEC
	faction = "BOS"
	status = "Paladin"
	total_positions = 1
	spawn_positions = 1
	supervisors = "none"
	selection_color = "#ffddf0"
	minimal_player_age = 7
	donaters = 1
	donatorrank = 4
	outfit = /datum/outfit/bos_paladin

	access = list(73)
	minimal_access = list(73)