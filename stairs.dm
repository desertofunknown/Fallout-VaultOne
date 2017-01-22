obj
	Ladderdown
		name = "Stairs"
		icon='Stairs.dmi'
		icon_state = "AncientDown"
		text = "S"
		DblClick()
			if(usr.z==1)
				usr << "[usr] begins climbing down the ladder."
				spawn(30)
					if(prob(10))
						usr << "[usr] falls and breaks his leg."
					usr.z=2