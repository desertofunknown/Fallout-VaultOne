/*
The /tg/ codebase currently requires you to have 7 z-levels of the same size dimensions.
z-level order is important, the order you put them in inside this file will determine what z level number they are assigned ingame.
Names of z-level do not matter, but order does greatly, for instances such as checking alive status of revheads on z1

current as of 2014/11/24
z1 = station
z2 = centcomm
z3 = derelict telecomms satellite
z4 = derelict station
z5 = mining
z6 = empty space
z7 = empty space
*/
/*
#if !defined(MAP_FILE)

        #include "map_files\TgStation\tgstation.2.1.3.dmm"
        #include "map_files\generic\z2.dmm"
        //#include "map_files\generic\z3.dmm"
        //#include "map_files\generic\z4.dmm"
        #include "map_files\generic\z5.dmm"
        //#include "map_files\generic\z6.dmm"
        //#include "map_files\generic\z7.dmm"

        #define MAP_FILE "tgstation.2.1.3.dmm"
        #define MAP_NAME "Box Station"

        #define MAP_TRANSITION_CONFIG	list(MAIN_STATION = SELFLOOPING, CENTCOMM = SELFLOOPING, ABANDONED_SATELLITE = CROSSLINKED, DERELICT = CROSSLINKED, MINING = CROSSLINKED, EMPTY_AREA_1 = CROSSLINKED, EMPTY_AREA_2 = CROSSLINKED)

#elif !defined(MAP_OVERRIDE)

	#warn a map has already been included, ignoring /tg/station 2.

#endif
#if !defined(MAP_FILE)

		#define TITLESCREEN "title" //Add an image in misc/fullscreen.dmi, and set this define to the icon_state, to set a custom titlescreen for your map

The /tg/ codebase currently requires you to have 7 z-levels of the same size dimensions.
z-level order is important, the order you put them in inside this file will determine what z level number they are assigned ingame.
Names of z-level do not matter, but order does greatly, for instances such as checking alive status of revheads on z1

current as of 2014/11/24
z1 = station
z2 = centcomm
z3 = derelict telecomms satellite
z4 = derelict station
z5 = mining
z6 = empty space
z7 = empty space
*/

#define MINETYPE "lavaland"
#if !defined(MAP_FILE)

        #include "map_files\TgStation\tgstation.2.1.3.dmm"
        #include "map_files\generic\z2.dmm"
        //#include "map_files\generic\z3.dmm"
        //#include "map_files\generic\z4.dmm"
        //#include "map_files\generic\lavaland.dmm"
       // #include "map_files\generic\z6.dmm"
       // #include "map_files\generic\z7.dmm"
        //#include "map_files\generic\z8.dmm"
		//#include "map_files\generic\z9.dmm"
		//#include "map_files\generic\z10.dmm"
		//#include "map_files\generic\z11.dmm"

		#define MAP_PATH "map_files/TgStation"
        //#include "map_files\generic\z3.dmm"
        //#include "map_files\generic\z4.dmm"
        #include "map_files\generic\z5.dmm"
        //#include "map_files\generic\z6.dmm"
        //#include "map_files\generic\z7.dmm"

        #define MAP_FILE "tgstation.2.1.3.dmm"
        #define MAP_NAME "Vault 113: Wasteland"

		#define MAP_TRANSITION_CONFIG DEFAULT_MAP_TRANSITION_CONFIG
        #define MAP_TRANSITION_CONFIG	list(MAIN_STATION = SELFLOOPING, CENTCOMM = SELFLOOPING, ABANDONED_SATELLITE = CROSSLINKED, DERELICT = CROSSLINKED, MINING = CROSSLINKED, EMPTY_AREA_1 = CROSSLINKED, EMPTY_AREA_2 = CROSSLINKED)

#elif !defined(MAP_OVERRIDE)

	#warn a map has already been included, ignoring /tg/station 2.

#endif