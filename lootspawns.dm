/*Devs read notes so you know what you are doing*/
//1 Object spawners, !.1 Medical Spawns, 1.2 Surgical Spawns, 1.3 Bloodpacks, 1.4 Vault Medical, 1.5 Wasteland Medical,
//1.6 Weapon Spawners , 1.7 Ammo Spawners, 1.8 Armor Spawners
obj
	spawners
		icon=null
		density=0
		alpha=0
		objectspawners //1
			medicalspawn //1.1
				surgical //1.2
					New()
						switch(rand(1,10))//get a random num between 1 and 10 inside a switch proc set the ifs bellow that
							if(1)
								var/obj/item/weapon/hemostat/lb = new //creates a new copy of the item
								lb.loc=src.loc //sets the location of the item to the location of the spawner
								del src //deletes the spawner
							if(2)
								var/obj/item/weapon/surgicaldrill/lb = new
								lb.loc=src.loc
								del src
							if(3)
								var/obj/item/weapon/retractor/lb = new
								lb.loc=src.loc
								del src
							if(4)
								var/obj/item/weapon/cautery/lb = new
								lb.loc=src.loc
								del src
							if(5)
								var/obj/item/weapon/scalpel/lb = new
								lb.loc=src.loc
								del src
							if(6)
								var/obj/item/clothing/suit/apron/surgical/lb = new
								lb.loc=src.loc
								del src
							if(7)
								var/obj/item/clothing/gloves/color/latex/lb = new
								lb.loc=src.loc
								del src
							if(8)
								var/obj/item/clothing/mask/surgical/lb = new
								lb.loc=src.loc
								del src
							if(9)
								var/obj/item/weapon/surgical_drapes/lb = new
								lb.loc=src.loc
								del src
							if(10)
								var/obj/item/weapon/circular_saw/lb = new
								lb.loc=src.loc
								del src
					bloodpack //1.3
						New()
							switch(rand(1,1))
								if(1)
									var/obj/item/weapon/reagent_containers/blood/random/lb = new
									lb.loc=src.loc
									del src

				vault //1.4
					equipment
						New()
							switch(rand(1,2))
								if(1)
									var/obj/item/weapon/gun/medbeam/lb = new
									lb.loc=src.loc
									del src
								if(2)
									var/obj/item/weapon/defibrillator/loaded/lb = new
									lb.loc=src.loc
									del src
					meds
						New()
							switch(rand(1,3))
								if(1)
									var/obj/item/weapon/reagent_containers/pill/patch/stimpak/lb = new
									lb.loc=src.loc
									del src
								if(2)
									var/obj/item/weapon/reagent_containers/pill/patch/radx/lb = new
									lb.loc=src.loc
									del src
								if(3)
									var/obj/item/weapon/reagent_containers/pill/patch/radaway/lb = new
									lb.loc=src.loc
									del src
						drugs
				wasteland //1.5
					equipment
					meds
						New()
							switch(rand(1,3))
								if(1)
									var/obj/item/weapon/reagent_containers/pill/patch/healpowder/lb = new
									lb.loc=src.loc
									del src
								if(2)
									var/obj/item/weapon/reagent_containers/pill/patch/radx/lb = new
									lb.loc=src.loc
									del src
								if(3)
									var/obj/item/weapon/reagent_containers/pill/patch/radaway/lb = new
									lb.loc=src.loc
									del src
						drugs
			weaponspawners //1.6
				melee
					tier1
					tier2
					tier3
					tier4
					tier5
				gun
					tier1
					tier2
					tier3
					tier4
					tier5
					ammo //1.7
						tier1
						tier2
						tier3
						tier4
						tier5
			armorspawners //1.8
				tier1
				tier2
				tier3
				tier4
				tier5
