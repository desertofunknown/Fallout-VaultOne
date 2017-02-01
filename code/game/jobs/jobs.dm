//~~Vault 113~~
var/const/CAPTAIN			=(1<<0)
var/const/HOP				=(1<<1)
//var/const/RD				=(1<<0)
//var/const/CMO				=(1<<3)

//	Security
var/const/WARDEN			=(1<<2)
var/const/OFFICER			=(1<<3)
var/const/ENGSEC			=(1<<4)

//	Engineering ~ Robotics
var/const/ENGINEER			=(1<<5)
var/const/AI				=(1<<6)
var/const/ROBOTICIST		=(1<<7)
var/const/CYBORG			=(1<<8)

//	Research
var/const/SCIENTIST			=(1<<9)
var/const/CHEMIST			=(1<<10)
var/const/MEDSCI			=(1<<11)

//	Medical
var/const/DOCTOR			=(1<<12)
//var/const/GENETICIST		=(1<<5)
//var/const/VIROLOGIST		=(1<<6)

//	Civilian
var/const/CIVILIAN			=(1<<1)
var/const/BARTENDER			=(1<<2)
var/const/BOTANIST			=(1<<3)
var/const/COOK				=(1<<4)
var/const/JANITOR			=(1<<5)
//var/const/LIBRARIAN		=(1<<5)
var/const/QUARTERMASTER		=(1<<6)
var/const/CARGOTECH			=(1<<7)
var/const/MINER				=(1<<8)
//var/const/LAWYER			=(1<<9)
//var/const/CHAPLAIN		=(1<<10)
//var/const/CLOWN			=(1<<11)
//var/const/MIME			=(1<<12)
var/const/ASSISTANT			=(1<<9)
var/const/WASTELANDWHORE	=(1<<10)
var/const/PUSHER			=(1<<11)
var/const/PREACHER			=(1<<12)

//~~Legion~~
var/const/LEGRECRUIT		=(1<<10)
var/const/LEGDECAN			=(1<<11)
var/const/LEGVEX			=(1<<12)
var/const/LEGCENTURION		=(1<<13)
var/const/LEGLEGAT			=(1<<14)
var/const/LEGVET			=(1<<15)

//~~NCR~~
var/const/NCRLIEUTENANT      	=(1<<1)
var/const/NCRVETRANGER			=(1<<2)
var/const/NCRRECRUIT        	=(1<<3)
var/const/NCRSERGEANT        	=(1<<4)
var/const/NCRRANGER       		=(1<<5)
var/const/NCRTROOPER        	=(1<<6)
var/const/NCRCOLONEL			=(1<<7)
var/const/NCRRECRANGER			=(1<<8)

//~~Wasteland~~
var/const/SCAVENGER         =(1<<21)
var/const/REGULATOR         =(1<<22)
var/const/SETTLER         	=(1<<23)
var/const/WASTELANDMEDIC	=(1<<24)
var/const/RAIDER        	=(1<<25)
var/const/NCR        		=(1<<26)

var/list/assistant_occupations = list(
	"Assistant",
//	"Atmospheric Technician",
	"Cargo Technician",
//	"Chaplain",
//	"Lawyer",
//	"Librarian",
)


var/list/command_positions = list(
	"Overseer",
	"Head of Personnel",
//	"NCR Lieutenant",
//	"NCR Sergeant",
//	"Research Director",
//	"Chief Medical Officer"
)


var/list/engineering_positions = list(
//	"Chief Engineer",
	"Engineer",
//	"Atmospheric Technician",
)


var/list/medical_positions = list(
//	"Chief Medical Officer",
	"Medical Doctor",
//	"Geneticist",
//	"Virologist",
	"Chemist"
)


var/list/science_positions = list(
//	"Research Director",
	"Scientist",
	"Roboticist"
)


var/list/supply_positions = list(
	"Head of Personnel",
	"Quartermaster",
	"Cargo Technician",
	"Shaft Miner",
)


var/list/civilian_positions = list(
	"Bartender",
	"Botanist",
	"Cook",
	"Janitor",
//	"Librarian",
//	"Lawyer",
//	"Chaplain",
//	"Clown",
//	"Mime",
	"Assistant"
)


var/list/security_positions = list(
	"Head of Security",
	"Warden",
	"Security Officer"
)


var/list/nonhuman_positions = list(
	"AI",
	"Cyborg",
	"pAI"
)

var/list/legion_positions = list(
	"Legion Recruit",
	"Legion Decan",
	"Legion Vexillarius",
	"Legion Centurion",
	"Legion Legat",
	"Legion Prime Recruit",
)

var/list/ncr_positions = list(
	"NCR Colonel",
	"NCR Lieutenant",
	"NCR Trooper",
	"NCR Veteran Ranger",
	"NCR Recruit Ranger",
	"NCR Ranger",
	"NCR Sergeant",
	"NCR Recruit",
)

var/list/wasteland_positions = list(
	"Regulator",
	"Settler",
	"Wastelandmedic",
	"Raider",
	"Scavenger",
	"Whore",
	"Pusher",
	"Preacher",
)

/proc/guest_jobbans(job)
	return ((job in command_positions) || (job in nonhuman_positions) || (job in security_positions))



//this is necessary because antags happen before job datums are handed out, but NOT before they come into existence
//so I can't simply use job datum.department_head straight from the mind datum, laaaaame.
/proc/get_department_heads(var/job_title)
	if(!job_title)
		return list()

	for(var/datum/job/J in SSjob.occupations)
		if(J.title == job_title)
			return J.department_head //this is a list