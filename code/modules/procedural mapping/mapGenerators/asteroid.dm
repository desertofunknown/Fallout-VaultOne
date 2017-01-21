//wasteland turfs
/datum/mapGeneratorModule/bottomLayer/wastelandTurfs
	spawnableTurfs = list(/turf/simulated/floor/wasteland = 100)

/datum/mapGeneratorModule/bottomLayer/wastelandWalls
	spawnableTurfs = list(/turf/simulated/mineral = 100)

//Border walls
/datum/mapGeneratorModule/border/wastelandWalls
	spawnableAtoms = list()
	spawnableTurfs = list(/turf/simulated/mineral = 100)

//Random walls
/datum/mapGeneratorModule/splatterLayer/wastelandWalls
	clusterCheckFlags = CLUSTER_CHECK_NONE
	spawnableAtoms = list()
	spawnableTurfs = list(/turf/simulated/mineral = 30)

//Monsters
/datum/mapGeneratorModule/splatterLayer/wastelandMonsters
	spawnableTurfs = list()
	spawnableAtoms = list(/mob/living/simple_animal/hostile/cazador = 2, \
	/mob/living/simple_animal/hostile/molerat = 3, \
	/mob/living/simple_animal/hostile/badmutant = 1)


// GENERATORS

/datum/mapGenerator/wasteland/hollow
	modules = list(/datum/mapGeneratorModule/bottomLayer/wastelandTurfs, \
		/datum/mapGeneratorModule/border/wastelandWalls)

/datum/mapGenerator/wasteland/hollow/random
	modules = list(/datum/mapGeneratorModule/bottomLayer/wastelandTurfs, \
		/datum/mapGeneratorModule/border/wastelandWalls, \
		/datum/mapGeneratorModule/splatterLayer/wastelandWalls)

/datum/mapGenerator/wasteland/hollow/random/monsters
	modules = list(/datum/mapGeneratorModule/bottomLayer/wastelandTurfs, \
		/datum/mapGeneratorModule/border/wastelandWalls, \
		/datum/mapGeneratorModule/splatterLayer/wastelandWalls, \
		/datum/mapGeneratorModule/splatterLayer/wastelandMonsters)

/datum/mapGenerator/wasteland/filled
	modules = list(/datum/mapGeneratorModule/bottomLayer/wastelandWalls)