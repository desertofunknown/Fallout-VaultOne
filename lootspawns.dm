obj
	medspawn
		icon=null
		density=0
		alpha=0
		surgical
			New()
				switch(rand(1,10))
					if(1)
						var/obj/item/weapon/hemostat/lb = new
						lb.loc=src.loc
						del src
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