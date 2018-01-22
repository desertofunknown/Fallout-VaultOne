/*
AI
*/

/datum/job/ai
	title = "AI"
	flag = AI
	department_flag = VAULT
	faction = "Vault"
	status = "Member"
	total_positions = 1
	spawn_positions = 1
	selection_color = "#005A20"
	supervisors = "your laws"
	req_admin_notify = 1
	donaters = 1
	minimal_player_age = 30

/datum/job/ai/equip(mob/living/carbon/human/H)
	if(!H)	return 0

/datum/job/ai/config_check()
	if(config && config.allow_ai)
		return 1
	return 0

/*
Cyborg
*/
/datum/job/vault/cyborg
	title = "Cyborg"
	flag = CYBORG
	department_flag = VAULT
	faction = "Vault"
	status = "Member"
	total_positions = 2
	spawn_positions = 2
	supervisors = "your laws and the AI"	//Nodrak
	selection_color = "#005A20"
	minimal_player_age = 21

/datum/job/cyborg/equip(mob/living/carbon/human/H)
	if(!H)	return 0
	return H.Robotize()
