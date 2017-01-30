/mob/living/simple_animal/hostile/glowingone
	name = "The Glowing One"
	desc = "A ferral ghoul that has been super irradiated..watch out it is going to blow!"
	icon = 'icons/mob/human.dmi'
	icon_state = "glowingghoul"
	icon_living = "glowingghoul"
	icon_dead = "glowingghoul_d"
	turns_per_move = 5
	speak_emote = list("growls")
	emote_see = list("growls")
	a_intent = "harm"
	maxHealth = 500
	health = 500
	speed = 1.2
	harm_intent_damage = 8
	melee_damage_lower = 20
	melee_damage_upper = 20
	attacktext = "claws"
	attack_sound = 'sound/hallucinations/growl1.ogg'
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 0
	maxbodytemp = 350
	unsuitable_atmos_damage = 10
	environment_smash = 1
	robust_searching = 1
	stat_attack = 2
	gold_core_spawnable = 1
	faction = list("zombie")
	var/mob/living/carbon/human/stored_corpse = null
	butcher_results = list(/obj/item/weapon/reagent_containers/food/snacks/meat/slab/human/mutant/zombie = 3)
	see_invisible = SEE_INVISIBLE_MINIMUM
	see_in_dark = 8
	layer = MOB_LAYER - 0.1



/mob/living/simple_animal/hostile/glowingone/AttackingTarget()
	..()
	if(istype(target, /mob/living))
		var/mob/living/L = target
		if(ishuman(L) && L.stat==DEAD)
			var/mob/living/carbon/human/H = L
			view(L) << "<span class='userdanger'>[src] feasts on [L] healing them."
			src.revive()
			src.LoseTarget()
			visible_message("<span class='danger'>[src] tears [L] to pieces!</span>")
			L.gib()
			return
			//L.gib()
			//for(var/mob/living/simple_animal/hostile/ferralghoul/holder/Z in H) //No instant heals for people who are already zombies
				//src << "<span class='userdanger'>They'll be getting up on their own, just give them a minute!</span>"
				//Z.faction = src.faction //Just in case zombies somehow ended up on different "teams"
				//H.faction = src.faction
				//return
			//Zombify(H)
		else if (L.stat==DEAD) //So they don't get stuck hitting a corpse
			//L.gib()
			visible_message("<span class='danger'>[src] tears [L] to pieces!</span>")
			src << "<span class='userdanger'>You feast on [L], restoring your health!</span>"
			src.revive()
			src.LoseTarget()
			L.gib()
			return
	if(src.health <= 200)
		if(prob(100))
			view(src) << "<span class='userdanger'>[src] lets out a large screech...this dosn't bode well.."
			for(var/mob/living/simple_animal/hostile/ferralghoul/F in range(50,src))
				if(F != src)
					if(F.stat != DEAD)
						walk_towards(F,src,3,3)

/mob/living/simple_animal/hostile/glowingone/death()
	..()
	for(var/mob/living/carbon/human/L in view(5,src))
		L.adjustToxLoss(10)
		L << "<span class='userdanger'>[src] begins to flash suddenly exploding."
		return
	del src
	//for(var/mob/living/simple_animal/hostile/glowingone/F in view(1,src))
		//if(F==src)
			//F.gib()
			//del F
/*/mob/living/simple_animal/hostile/glowingone/proc/Zombify(mob/living/carbon/human/H)
	H.set_species(/datum/species/glowingone)
	if(H.head) //So people can see they're a zombie
		var/obj/item/clothing/helmet = H.head
		if(!H.unEquip(helmet))
			qdel(helmet)
	if(H.wear_mask)
		var/obj/item/clothing/mask = H.wear_mask
		if(!H.unEquip(mask))
			qdel(mask)
	var/mob/living/simple_animal/hostile/glowingone/Z = new /mob/living/simple_animal/hostile/zombie(H.loc)
	Z.faction = src.faction
	Z.appearance = H.appearance
	Z.transform = matrix()
	Z.pixel_y = 0
	for(var/mob/dead/observer/ghost in player_list)
		if(H.real_name == ghost.real_name)
			ghost.reenter_corpse()
			break
	Z.ckey = H.ckey
	H.stat = DEAD
	H.butcher_results = list(/obj/item/weapon/reagent_containers/food/snacks/meat/slab/human/mutant/zombie = 3) //So now you can carve them up when you kill them. Maybe not a good idea for the human versions.
	H.loc = Z
	Z.stored_corpse = H
	for(var/mob/living/simple_animal/hostile/glowingone/holder/D in H) //Dont want to revive them twice
		qdel(D)
	visible_message("<span class='danger'>[Z] staggers to their feet!</span>")
	Z << "<span class='userdanger'>You are now a zombie! Follow your creators lead!</span>"*/


/mob/living/simple_animal/hostile/spawner/glowingone
	name = "corpse pit"
	desc = "A pit full of zombies."
	icon_state = "tombstone"
	icon_living = "tombstone"
	icon = 'icons/mob/nest.dmi'
	health = 400
	maxHealth = 400
	list/spawned_mobs = list()
	max_mobs = 40
	spawn_time = 100
	mob_type = /mob/living/simple_animal/hostile/glowingone
	spawn_text = "emerges from"
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	faction = list("zombie")


/mob/living/simple_animal/hostile/spawner/glowingone/lesser
	name = "lesser corpse pit"
	desc = "A pit full of less zombies."
	max_mobs = 10
	spawn_time = 150
	health = 200
	maxHealth = 200

/mob/living/simple_animal/hostile/spawner/glowingone/death()
	visible_message("<span class='danger'>[src] collapes, stopping the flow of zombies!</span>")
	qdel(src)



/mob/living/simple_animal/hostile/glowingone/holder
	name = "infection holder"
	icon_state = "none"
	icon_living = "none"
	icon_dead = "none"
	desc = "You shouldn't be seeing this."
	invisibility = 101
	unsuitable_atmos_damage = 0
	stat_attack = 2
	gold_core_spawnable = 0
	AIStatus = AI_OFF
	stop_automated_movement = 1
	density = 0

/mob/living/simple_animal/hostile/glowingone/holder/New()
	..()
	spawn(rand(800,1200))
		if(src && istype(loc, /mob/living/carbon/human))
			var/mob/living/carbon/human/H = loc
			//Zombify(H)
		qdel(src)
