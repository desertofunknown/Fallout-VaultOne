/mob/var/social_faction


var/human_factions = list()

proc/get_faction_datum(faction)
	if(!human_factions[faction])
		return null

	return human_factions[faction]

proc/get_faction_members(var/faction)
	var/list/mobs = list()
	for(var/mob/M in world)
		if(M.faction == faction)
			mobs += M
	return mobs

/datum/f13_faction
	var/name = "UNKNOWN"

	var/late_join = 0

	var/first_spawn = 0

	var/welcome_text = ""

	var/color = "#171717"

	var/list/verbs = list()

	var/head_status = null

	var/list/craft_recipes = list()

	var/flag = null

	var/voting = 0

	var/list/members = list()


/*mob/proc/begin_head_voting()
	set name = "Leader Voting"
	set category = "Faction"

	if(stat)
		return

	var/datum/f13_faction/F = get_faction_datum(src.social_faction)

	if(!F || !F.head_status)
		return 0

	if(F.voting)
		src <<  "<span class='warning'>A vote has started for a new faction leader.</span>"
		return 0

	if(src.status == F.head_status)
		src <<  "<span class='notice'>You are already [F.head_status].</span>"
		return 0

	if(alert("Are you sure?",,"Yes","No")=="No")
		return 0

	var/list/all_members = get_faction_members(F.name)
	var/list/all_head_candidates = list()
	for(var/mob/M in all_members)
		if(!M.stat && M.ckey)
			all_head_candidates += M
	if(all_head_candidates.len < 2)
		src <<  "<span class='notice'>You are the last member of your faction.</span>"
		src.set_status(F.head_status)
		return 1

	var/list/correct_candidates = list()
	for(var/mob/M in all_head_candidates)
		if(M in view())
			correct_candidates += M
	if(all_head_candidates.len/2 > correct_candidates.len)
		src <<  "<span class='warning'>To start a vote, you need more active members of your faction to be present.</span>"
		return 0
	//VOTE BEGIN

	say("Let's choice new [F.head_status].")
	var/list/choices = list()

	F.voting = 1

	var/global/voters_count
	voters_count = correct_candidates.len
	var/voting_started_time = world.time
	for(var/mob/M in correct_candidates)
		spawn(0)
			var/choice = input(M,"Make a choice") in correct_candidates
			if(choice == M)
				M.say(pick("I'm voting for myself", "I'm gonna be the new [F.head_status]!", "No one but myself is worthy."))
			else
				if(prob(1))
					if(prob(50))
						M.say("TRUMP FOREVER! MAKE WASTELAND GREAT AGAIN!!!")
					else
						M.say("PUTIN IS THE BEST! BOBAH YPA - 3OBET MOCKBA!!!")
					sleep(20)
					M.say("I changed my mind...")
				M.say(pick("I vote for [choice].", "[choice] - I choose you!!!", "I choose [choice] to be [F.head_status].", "I believe [choice] is worthy to be our leader."))
			choices[choice] += 1
			voters_count -= 1

	while(1)
		if(round((world.time - voting_started_time) / 600) > 2)
			break
		if(voters_count < 1)
			break
		sleep(20)
	var/mob/favorite = null
	for(var/mob/M in choices)
		if(favorite == null)
			favorite = M
			continue
		if(choices[M] > choices[favorite])
			favorite = M
	if(favorite == null)
		to_chat(src, "<span class='warning'>Sadly, no one has voted.</span>")
		F.voting = 0
		return 0
	for(var/mob/M in choices)
		if(choices[M] == choices[favorite] && M != favorite)
			to_chat(src, "<span class='warning'>You need to make a choice together.</span>")
			say("We need to make a choice together.")
			F.voting = 0
			return 0
	if(favorite == src)
		say("I think I'm a new [F.head_status] now")
	else
		say("[favorite] is a new [F.head_status]")

	remove_everyone_from_status(F.head_status)

	favorite.set_status(F.head_status)

	F.voting = 0

	//END THIS SHIT

	return 1

mob/proc/set_faction(var/faction)
	var/datum/f13_faction/F = get_faction_datum(faction)
	var/datum/f13_faction/last_F = get_faction_datum(src.faction)
	if(!F)
		return 0
	if(F.name == src.faction)
		return 1
	if(last_F)
		src.verbs -= last_F.verbs
		src.allow_recipes -= last_F.craft_recipes
		src.faction -= last_F.name
		last_F.members -= src

	src.faction = F.name
	src.faction += F.name
	src << "<span class='notice'>You are joined to <span style='color: [F.color];'>[F.name]</span> faction.</span>"
	F.members |= src

	src.allow_recipes += F.craft_recipes
	src.verbs += F.verbs
	if(F.welcome_text)
		src << F.welcome_text
	return 1*/

mob/proc/set_faction(var/faction)
	var/datum/f13_faction/F = get_faction_datum(faction)
	var/datum/f13_faction/last_F = get_faction_datum(src.faction)
	if(!F)
		return 0
	if(F.name == src.faction)
		return 1
	if(last_F)
		src.verbs -= last_F.verbs
		src.allow_recipes -= last_F.craft_recipes

	src.faction = F.name
	src << "<span class='notice'>You are joined to <span style='color: [F.color];'>[F.name]</span> faction.</span>"

	src.allow_recipes += F.craft_recipes
	src.verbs += F.verbs


	if(F.welcome_text)
		src << F.welcome_text
	return 1
mob/proc/begin_head_voting()
	set name = "Leader Voting"
	set category = "Faction"
	var/datum/f13_faction/F = get_faction_datum(src.faction)

	if(!F || !F.head_status)
		return 0

	if(F.voting)
		src << "<span class='warning'>Voting is going on.</span>"
		return 0

	if(src.status == F.head_status)
		src << "<span class='notice'>You already [F.head_status].</span>"
		return 0

	if(alert("You are sure?",,"Yes","No")=="No")
		return 0

	var/list/all_members = get_faction_members(F.name)
	var/list/all_head_candidates = list()
	for(var/mob/M in all_members)
		if(M.stat != DEAD && M.ckey)
			all_head_candidates += M
	if(all_head_candidates.len < 2)
		src << "<span class='notice'>You are the last member of your faction.</span>"
		src.set_status(F.head_status)
		return 1

	var/list/correct_candidates = list()
	for(var/mob/M in all_head_candidates)
		if(M in view())
			correct_candidates += M
	if(all_head_candidates.len/2 > correct_candidates.len)
		src << "<span class='warning'>To start a vote, you need more active members of your faction to be present at the moment.</span>"
		return 0
	//VOTE BEGIN

	say("Let's choice new [F.head_status].")
	var/list/choices = list()

	F.voting = 1

	var/global/voters_count
	voters_count = correct_candidates.len
	var/voting_started_time = world.time
	for(var/mob/M in correct_candidates)
		spawn(0)
			var/choice = input(M,"Make a choice") in correct_candidates
			if(choice == M)
				M.say(pick("I'm voting for myself", "I'm gonna be the new [F.head_status]!", "No one other but myself is worthy."))
			else
				if(prob(1))
					if(prob(50))
						M.say("TRUMP FOREVER! MAKE WASTELAND GREAT AGAIN!!!")
					else
						M.say("PUTIN THE BEST!!!")
					sleep(20)
					M.say("I changed my mind...")
				M.say(pick("I vote for [choice].", "[choice] - I choose you!", "I choose [choice] to be [F.head_status].", "I believe [choice] is worthy to be our leader."))
			choices[choice] += 1
			voters_count -= 1

	while(1)
		if(round((world.time - voting_started_time) / 600) > 2)
			break
		if(voters_count < 1)
			break
		sleep(20)
	var/mob/favorite = null
	for(var/mob/M in choices)
		if(favorite == null)
			favorite = M
			continue
		if(choices[M] > choices[favorite])
			favorite = M
	if(favorite == null)
		src << "<span class='warning'>No one has voted.</span>"
		F.voting = 0
		return 0
	for(var/mob/M in choices)
		if(choices[M] == choices[favorite] && M != favorite)
			src << "<span class='warning'>You need to make a choice together.</span>"
			say("We need make a choice together.")
			F.voting = 0
			return 0
	if(favorite == src)
		say("So, i think i'm is a new [F.head_status]")
	else
		say("[favorite] is a new [F.head_status]")

	remove_everyone_from_status(F.head_status)

	favorite.set_status(F.head_status)

	F.voting = 0

	//END THIS SHIT

	return 1

/datum/f13_faction/vault
	name = "Vault"
	first_spawn = 1
	late_join = 1
	color = "#005A20"
	head_status = "Overseer"
	verbs = list(/mob/proc/begin_head_voting)
	craft_recipes = list(/datum/table_recipe/vlt_encryption_key)
/datum/f13_faction/ncr
	name = "NCR"
	first_spawn = 1
	late_join = 1
	color = "#020080"
	head_status = "Colonel"
	flag = "ncr"
	verbs = list(/mob/proc/begin_head_voting)
	welcome_text = "Your current objectives:<br>\
1. As an NCR soldier you must uphold the law around town, kill any raiders you see,  find and kill everyone Legion member<br>\
2. As an NCR soldier you must protect the innocent wastelanders from the horrors the wasteland brings<br>\
3. Protect yourself above all others, your important to the NCR and we can't afford to lose you.<br>"
	craft_recipes = list(/datum/table_recipe/ncr_combat_armor, /datum/table_recipe/ncr_encryption_key)
/datum/f13_faction/legion
	name = "Legion"
	first_spawn = 1
	late_join = 1
	head_status = "Legat"
	color = "#C24D44"
	flag = "legion"
	craft_recipes = list(/datum/table_recipe/legion_recruit_armor, /datum/table_recipe/legion_recruit_helm, \
						 /datum/table_recipe/legion_encryption_key)
	welcome_text = "Your current objectives:<br>\
	1. As a member of The Legion you must obey all orders given by anyone out ranking out<br>\
	2. You must enslave the occupants of the wasteland, kill any that resist unless they can be over powered<br>\
	3. As a Legion solider you will kill any NCR you come across, fight to your death for Caesar!!"
/datum/f13_faction/wasteland
	name = "Wasteland"
	late_join = 1
/*/datum/f13_faction/den
	name = "Den"
	color = "#804B00"
	first_spawn = 1
	late_join = 1
	head_status = "Sheriff"
	verbs = list(/mob/proc/begin_head_voting)
	craft_recipes = list(/datum/table_recipe/den_encryption_key)*/

/datum/f13_faction/followers
	name = "Followers"
	color = "#005A20"
	welcome_text = "<b>Alignment: Neutral Good</b><br>The Followers of the Apocalypse, or simply the Followers - A post-War organization whose goal is to tend to the inhabitants of the wasteland, as well as to ensure that the horrors of the Great War are never to be repeated.<br>To that end, they serve as keepers of knowledge, a position which provides them with the skills they need to carry out their mission.<br>They don't follow a single Great Leader, but instead a handful of independent Leaders for each group."
	head_status = "leader"
	first_spawn = 1
	late_join = 1
	verbs = list(/mob/proc/begin_head_voting)

/datum/f13_faction/acolytes
	name = "Acolytes"
	color = "#204200"
	welcome_text = "<b>Alignment: Chaotic Neutral</b><br>Have you ever met a bunch of crazed zealots willing to baptize you with radioactive waste?<br>These fanatics are likely to make it so if you have smooth skin, since they all lost theirs decades ago.<br>They are faithful to their glorious God - the Great Atom, who brings salvation to all living.<br>They honor their faith, and are willing to do everything they can to please the Great Atom, and live eternally with a holy green glow."
	head_status = "master_atom"
	first_spawn = 1
	late_join = 1
	verbs = list(/mob/proc/begin_head_voting)


/datum/f13_faction/neutral
	name = "Neutral"
	//full_name = "Independent Wastelanders"
	welcome_text = "<b>Alignment: True Neutral</b><br>Wastelanders - A catch-all term for anyone living in the wasteland who are not affiliated with any other groups.<br>They make a subsistence living off the land, trade with local settlements, and try not to be ravaged by the abundant (and usually hostile) wildlife, or bands of roaming raider gangs and slavers.<br><i>Home, home on the wastes...</i>"
	//id = "none"

/datum/f13_faction/city
	name = "Den"
	color = "#804B00"
	head_status = "mayor"
	first_spawn = 1
	late_join = 1
	welcome_text = "<b>Alignment: Lawful Neutral</b><br>City dwellers - A group of wastelanders that have holed up in the town to wait out the worst and hope for the best.<br>As the City evolved, its citizens became different from the rest of the Wasteland dwellers - they value the safety of a city, prefer better food and clothing, and mostly trust the elected Mayor - even if the decisions made are not the best.<br><i>In Mayor We Trust!</i>"
	verbs = list(/mob/proc/begin_head_voting)
	craft_recipes = list(/datum/table_recipe/den_encryption_key)

/datum/f13_faction/raider
	name = "Raiders"
	color = "#804B00"
	head_status = "gangleader"
	first_spawn = 1
	late_join = 1
	welcome_text = "<b>Alignment: Chaotic Evil</b><br>Raiders - Any group of wastelanders who pillage, plunder, murder, or otherwise ruin the day of anyone unfortunate enough to not be one of them.<br>Raiders tend to organize into loose confederations of gangs in the post-apocalyptic wasteland, and are a constant problem.<br>Raiders typically prey upon travelers and very small towns, leaving more populous or larger areas alone."
	verbs = list(/mob/proc/begin_head_voting)