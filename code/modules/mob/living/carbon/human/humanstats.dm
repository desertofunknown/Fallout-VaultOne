/mob/living/carbon/human
	var
		small_guns = 0
		big_guns = 0
		barter = 0
		energy_weapons = 0
		explosives = 0
		lockpick = 0
		medicine = 0
		melee_weapons = 0
		repair = 0
		science = 0
		sneak = 0
		speech = 0
		unarmed = 0

	var
		strength = 0
		agility = 0
		preception = 0
		intelligence = 0
		luck = 0
		dexterity = 0
/mob/living/carbon/human
	proc/GenStats()
		switch(job)
			/*vault*/
			if("Overseer")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(7,10)
				big_guns = rand(1,10)
				barter = 1
				energy_weapons = rand(1,10)
				explosives = 1
				lockpick = 1
				medicine = 1
				melee_weapons = rand(1,10)
				repair = 1
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Engineer")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(1,2)
				big_guns = rand(1,2)
				barter = 1
				energy_weapons = rand(1,2)
				explosives = 1
				lockpick = 1
				medicine = 1
				melee_weapons = rand(1,2)
				repair = 10
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Doctor")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(1,2)
				big_guns = rand(1,2)
				barter = 1
				energy_weapons = rand(1,2)
				explosives = 1
				lockpick = 1
				medicine = 10
				melee_weapons = 5
				repair = 2
				science = 3
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Scientist")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(1,2)
				big_guns = rand(1,2)
				barter = 1
				energy_weapons = rand(1,2)
				explosives = 1
				lockpick = 1
				medicine = 3
				melee_weapons = 5
				repair = 6
				science = 10
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Officer")
				strength=rand(7,8)
				agility=rand(5,6)
				preception=rand(5,6)
				intelligence=rand(4,5)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(1,10)
				big_guns = rand(1,10)
				barter = 1
				energy_weapons = rand(5,10)
				explosives = 1
				lockpick = 1
				medicine = 1
				melee_weapons = rand(3,6)
				repair = 1
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Dweller")
				strength=rand(4,5)
				agility=rand(4,5)
				preception=rand(4,5)
				intelligence=rand(4,5)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(2,3)
				big_guns = rand(2,3)
				barter = 2
				energy_weapons = rand(3,4)
				explosives = 2
				lockpick = 2
				medicine = 2
				melee_weapons = rand(2,3)
				repair = 3
				science = 3
				sneak = 3
				speech = 3
				unarmed = rand(1,10)
			/*den*/
			if("Settler")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(1,10)
				big_guns = rand(1,2)
				barter = 1
				energy_weapons = rand(1,2)
				explosives = 1
				lockpick = 1
				medicine = 2
				melee_weapons = rand(1,10)
				repair = 3
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Sheriff")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(4,10)
				big_guns = rand(1,10)
				barter = 1
				energy_weapons = rand(1,2)
				explosives = 1
				lockpick = 1
				medicine = 2
				melee_weapons = rand(1,5)
				repair = 3
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			/*wastelander*/
			if("Wastelander")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(1,7)
				big_guns = rand(1,3)
				barter = 1
				energy_weapons = rand(1,3)
				explosives = 1
				lockpick = 1
				medicine = 2
				melee_weapons = rand(1,7)
				repair = 2
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Preacher")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(1,2)
				big_guns = 1
				barter = 1
				energy_weapons = rand(1,2)
				explosives = 1
				lockpick = 1
				medicine = rand(6,10)
				melee_weapons = rand(1,2)
				repair = 1
				science = 1
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Raider")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(4,10)
				big_guns = rand(4,10)
				barter = 1
				energy_weapons = 5
				explosives = 1
				lockpick = 1
				medicine = 1
				melee_weapons = rand(4,10)
				repair = 1
				science = 1
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			/*legion*/
			if("Legionary")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(1,2)
				big_guns = rand(1,2)
				barter = 1
				energy_weapons = 1
				explosives = 1
				lockpick = 1
				medicine = 1
				melee_weapons = rand(7,10)
				repair = rand(1,2)
				science = rand(1,2)
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Decan")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(1,2)
				big_guns = rand(1,2)
				barter = 1
				energy_weapons = 1
				explosives = 1
				lockpick = 1
				medicine = 1
				melee_weapons = rand(7,10)
				repair = 8
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Vexillarius")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(1,5)
				big_guns = rand(1,4)
				barter = 1
				energy_weapons = rand(1,2)
				explosives = 1
				lockpick = 1
				medicine = 1
				melee_weapons = 5
				repair = 3
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Centurion")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(1,4)
				big_guns = rand(1,4)
				barter = 1
				energy_weapons = rand(1,2)
				explosives = 1
				lockpick = 1
				medicine = 1
				melee_weapons = rand(5,10)
				repair = 5
				science = rand(1,2)
				sneak = rand(1,2)
				speech = 10
				unarmed = rand(1,10)
			if("Legat")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(5,10)
				big_guns = rand(5,10)
				barter = 1
				energy_weapons = rand(1,10)
				explosives = 1
				lockpick = 1
				medicine = 4
				melee_weapons = rand(7,10)
				repair = 10
				science = rand(1,2)
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Veteran")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(1,6)
				big_guns = rand(1,6)
				barter = 1
				energy_weapons = rand(1,4)
				explosives = 1
				lockpick = 1
				medicine = 1
				melee_weapons = rand(7,10)
				repair = 1
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			/*ncr*/
			if("Lieutenant")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(7,10)
				big_guns = rand(5,10)
				barter = 1
				energy_weapons = rand(5,10)
				explosives = 1
				lockpick = 1
				medicine = rand(1,2)
				melee_weapons = 5
				repair = 1
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Major")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(7,10)
				big_guns = rand(5,10)
				barter = 1
				energy_weapons = rand(5,10)
				explosives = 1
				lockpick = 1
				medicine = rand(1,2)
				melee_weapons = 5
				repair = 5
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Colonel")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(7,10)
				big_guns = rand(7,10)
				barter = 1
				energy_weapons = rand(7,10)
				explosives = 1
				lockpick = 1
				medicine = rand(1,2)
				melee_weapons = 5
				repair = 10
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Sergeant")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(5,10)
				big_guns = rand(5,10)
				barter = 1
				energy_weapons = 5
				explosives = 1
				lockpick = 1
				medicine = rand(4,6)
				melee_weapons = rand(1,10)
				repair = 1
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Trooper")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(3,10)
				big_guns = rand(6,10)
				barter = 1
				energy_weapons = rand(3,10)
				explosives = 1
				lockpick = 1
				medicine = rand(1,2)
				melee_weapons = rand(1,10)
				repair = rand(1,2)
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Recruit")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(1,10)
				big_guns = rand(4,10)
				barter = 1
				energy_weapons = rand(1,10)
				explosives = 1
				lockpick = 1
				medicine = 1
				melee_weapons = 5
				repair = 1
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Veteran Ranger")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(8,10)
				big_guns = rand(8,10)
				barter = 1
				energy_weapons = rand(1,10)
				explosives = 1
				lockpick = 1
				medicine = 2
				melee_weapons = rand(1,2)
				repair = 4
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Ranger")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(6,10)
				big_guns = rand(6,10)
				barter = 1
				energy_weapons = rand(1,10)
				explosives = 1
				lockpick = 1
				medicine = 1
				melee_weapons = rand(1,2)
				repair = 1
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Recruit Ranger")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(4,10)
				big_guns = rand(5,10)
				barter = 1
				energy_weapons = 5
				explosives = 1
				lockpick = 1
				medicine = 1
				melee_weapons = rand(1,2)
				repair = 1
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Messiah")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(2,3)
				big_guns = rand(2,3)
				barter = 1
				energy_weapons = rand(2,3)
				explosives = 1
				lockpick = 1
				medicine = 1
				melee_weapons = rand(6,10)
				repair = 1
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Mercenary")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(4,10)
				big_guns = rand(5,10)
				barter = 1
				energy_weapons = rand(1,10)
				explosives = 1
				lockpick = 1
				medicine = 1
				melee_weapons = rand(5,10)
				repair = 1
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Initiate")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(1,10)
				big_guns = rand(1,10)
				barter = 1
				energy_weapons = rand(5,10)
				explosives = 1
				lockpick = 1
				medicine = 1
				melee_weapons = rand(1,2)
				repair = 1
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Scribe")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(1,10)
				big_guns = rand(1,10)
				barter = 1
				energy_weapons = rand(6,10)
				explosives = 1
				lockpick = 1
				medicine = rand(3,6)
				melee_weapons = rand(1,2)
				repair = 1
				science = rand(3,6)
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Knight")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(4,10)
				big_guns = rand(5,10)
				barter = 1
				energy_weapons = rand(8,10)
				explosives = 1
				lockpick = 1
				medicine = 1
				melee_weapons = rand(1,2)
				repair = 1
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)
			if("Paladin")
				strength=rand(8,7)
				agility=rand(4,5)
				preception=rand(5,6)
				intelligence=rand(8,9)
				luck=rand(1,2)
				dexterity=rand(3,4)

				small_guns = rand(4,10)
				big_guns = rand(5,10)
				barter = 1
				energy_weapons = 5
				explosives = 1
				lockpick = 1
				medicine = 1
				melee_weapons = rand(1,2)
				repair = 1
				science = 2
				sneak = 2
				speech = 10
				unarmed = rand(1,10)