atom/var/tmp/list/CoolDowns=new() //Temporary, meaning all cooldowns are clear when a unit is reconstructed from a save file.
atom/proc/CoolDown(NAME="Basic",TIME=150) //Can be called without using arguments to have a 15 second generic cooldown.
	if("[NAME]" in CoolDowns) return //Returns null, thus saying "no" to an "if(CoolDown())" case.
	if(TIME>0)
		CoolDowns+="[NAME]" //Makes it a text string and adds to active cooldowns.
		spawn(TIME) CoolDowns-="[NAME]" //Removes from active cooldowns after TIME.
	return(1) //Return 1, thus saying "yes" to an "if(CoolDown())"