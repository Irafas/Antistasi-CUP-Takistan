////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameOccupants = "US";

//Police Faction
factionGEN = "CUP_B_CDF";
//SF Faction
factionMaleOccupants = "CUP_B_US_Army";
//Miltia Faction
if ((gameMode != 4) and (!hasFFAA)) then {factionFIA = ""};

//Flag Images
NATOFlag = "Flag_NATO_F";
NATOFlagTexture = "\A3\Data_F\Flags\Flag_NATO_CO.paa";
flagNATOmrk = "flag_NATO";
if (isServer) then {"NATO_carrier" setMarkerText "NATO Carrier"};

//Loot Crate
NATOAmmobox = "B_supplyCrate_F";

////////////////////////////////////
//   PVP LOADOUTS AND VEHICLES   ///
////////////////////////////////////
//PvP Loadouts
NATOPlayerLoadouts = [
	//Team Leader
	["vanilla_blufor_teamLeader_altis"] call A3A_fnc_getLoadout,
	//Medic
	["vanilla_blufor_medic_altis"] call A3A_fnc_getLoadout,
	//Autorifleman
	["vanilla_blufor_machineGunner_altis"] call A3A_fnc_getLoadout,
	//Marksman
	["vanilla_blufor_marksman_altis"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["vanilla_blufor_AT_altis"] call A3A_fnc_getLoadout,
	//AT2
	["vanilla_blufor_rifleman_altis"] call A3A_fnc_getLoadout
];

//PVP Player Vehicles
vehNATOPVP = ["B_MRAP_01_F","B_MRAP_01_hmg_F"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
NATOGrunt = "CUP_B_US_Soldier";
NATOOfficer = "CUP_B_US_Officer";
NATOOfficer2 = "CUP_B_USMC_Officer";
NATOBodyG = "CUP_B_US_Soldier_ACOG";
NATOCrew = "CUP_B_US_Crew";
NATOUnarmed = "CUP_B_USMC_Soldier_Light_FROG_DES";
NATOMarksman = "CUP_B_US_Soldier_Marksman";
staticCrewOccupants = "CUP_B_US_Soldier_Light";
NATOPilot = "CUP_B_US_Pilot";

//Militia Units
if ((gameMode != 4) and (!hasFFAA)) then
	{
	FIARifleman = "CUP_B_US_Soldier_Light";
	FIAMarksman = "CUP_B_US_Soldier_Marksman";
	};

//Police Units
policeOfficer = "CUP_B_CDF_Officer_DST";
policeGrunt = "CUP_B_CDF_Militia_DST";

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups
//Teams
groupsNATOSentry = ["CUP_B_US_Soldier_GL",NATOGrunt];
groupsNATOSniper = ["CUP_B_US_Sniper","CUP_B_US_Spotter"];
groupsNATOsmall = [groupsNATOSentry,groupsNATOSniper,["CUP_B_US_SpecOps_JTAC","CUP_B_US_SpecOps"]];
//Fireteams
groupsNATOAA = ["CUP_B_US_Soldier_TL","CUP_B_US_Soldier_AA","CUP_B_US_Soldier_AA","CUP_B_US_Soldier_AAT"];
groupsNATOAT = ["CUP_B_US_Soldier_TL","CUP_B_US_Soldier_AT","CUP_B_US_Soldier_AT","CUP_B_US_Soldier_AAT"];
groupsNATOmid = [["CUP_B_US_Soldier_TL","CUP_B_US_Soldier_AR","CUP_B_US_Soldier_GL","CUP_B_US_Soldier_LAT"],groupsNATOAA,groupsNATOAT];
//Squads
NATOSquad = ["CUP_B_US_Soldier_SL",NATOGrunt,"CUP_B_US_Soldier_LAT",NATOMarksman,"CUP_B_US_Soldier_TL","CUP_B_US_Soldier_AR","CUP_B_US_Soldier_AAR","CUP_B_US_Medic"];
NATOSpecOp = ["CUP_B_US_SpecOps_TL","CUP_B_US_SpecOps_M",NATOBodyG,"CUP_B_US_Soldier_HAT","CUP_B_US_SpecOps_JTAC","CUP_B_US_Soldier_Engineer_EOD","CUP_B_US_SpecOps_AR","CUP_B_US_SpecOps_Medic"];
groupsNATOSquad =
	[
	NATOSquad,
	["CUP_B_US_Soldier_SL",NATOGrunt,"CUP_B_US_Soldier_TL","CUP_B_US_Soldier_AR","CUP_B_US_Soldier_AAR","CUP_B_US_Soldier_MG","CUP_B_US_Soldier_AMG","CUP_B_US_Medic"],
	["CUP_B_US_Soldier_SL",NATOGrunt,"CUP_B_US_Soldier_TL","CUP_B_US_Soldier_AR","CUP_B_US_Soldier_AAR","CUP_B_US_Soldier_MG","CUP_B_US_Soldier_AMG","CUP_B_US_Medic"],
	["CUP_B_US_Soldier_SL",NATOGrunt,"CUP_B_US_Soldier_TL","CUP_B_US_Soldier_AR","CUP_B_US_Soldier_AAR","CUP_B_US_Soldier_AA","CUP_B_US_Soldier_AAT","CUP_B_US_Medic"],
	["CUP_B_US_Soldier_SL",NATOGrunt,"CUP_B_US_Soldier_TL","CUP_B_US_Soldier_AR","CUP_B_US_Soldier_AAR","CUP_B_US_Soldier_AT","CUP_B_US_Soldier_AAT","CUP_B_US_Medic"],
	["CUP_B_US_Soldier_SL",NATOGrunt,"CUP_B_US_Soldier_TL","CUP_B_US_Soldier_AR","CUP_B_US_Soldier_AAR","CUP_B_US_Engineer","CUP_B_US_Engineer","CUP_B_US_Medic"]
	];

//Militia Groups
if ((gameMode != 4) and (!hasFFAA)) then
	{
	//Teams
	groupsFIASmall =
		[
		["CUP_B_US_Soldier_GL",FIARifleman],
		[FIAMarksman,FIARifleman],
		["CUP_B_US_Soldier_Marksman","CUP_B_US_Soldier_Marksman"]
		];
	//Fireteams
	groupsFIAMid =
		[
		["CUP_B_US_Soldier_TL","CUP_B_US_Soldier_GL","CUP_B_US_Soldier_AR","CUP_B_US_Soldier_Marksman"],
		["CUP_B_US_Soldier_TL","CUP_B_US_Soldier_GL","CUP_B_US_Soldier_AR","CUP_B_US_Soldier_LAT"],
		["CUP_B_US_Soldier_TL","CUP_B_US_Soldier_AR","CUP_B_US_Soldier_AAT","CUP_B_US_Soldier_AA"]
		];
	//Squads
	FIASquad = ["CUP_B_US_Soldier_TL","CUP_B_US_Soldier_AR","CUP_B_US_Soldier_GL","CUP_B_US_Soldier_Light","CUP_B_US_Soldier_Light","CUP_B_US_Soldier_Marksman","CUP_B_US_Soldier_LAT","CUP_B_US_Medic"];
	groupsFIASquad =
		[
		FIASquad,
		["CUP_B_US_Soldier_TL","CUP_B_US_Soldier_AMG","CUP_B_US_Soldier_GL","CUP_B_US_Soldier_Light","CUP_B_US_Soldier_MG","CUP_B_US_Soldier_MG","CUP_B_US_Soldier_LAT","CUP_B_US_Medic"]
		];
	};

//Police Groups
//Teams
groupsNATOGen = [policeOfficer,policeGrunt];

////////////////////////////////////
//           VEHICLES            ///
////////////////////////////////////
//Military Vehicles
//Lite
vehNATOBike = "CUP_B_M1030_USMC";
vehNATOLightArmed = ["CUP_B_HMMWV_M2_USA"];
vehNATOLightUnarmed = ["CUP_B_HMMWV_Unarmed_USA"];
vehNATOTrucks = ["CUP_B_MTVR_USA","CUP_B_MTVR_USA"];
vehNATOCargoTrucks = ["CUP_B_MTVR_USA", "CUP_B_MTVR_USA"];
vehNATOAmmoTruck = "CUP_B_MTVR_Ammo_USA";
vehNATORepairTruck = "CUP_B_MTVR_Repair_USA";
vehNATOLight = vehNATOLightArmed + vehNATOLightUnarmed;
//Armored
vehNATOAPC = ["CUP_B_M1126_ICV_M2_Desert","CUP_B_M113_desert_USA"];
vehNATOTank = "CUP_B_M1A1_DES_US_Army";
vehNATOAA = "CUP_B_M6LineBacker_USA_D";
vehNATOAttack = vehNATOAPC + [vehNATOTank];
//Boats
vehNATOBoat = "B_Boat_Armed_01_minigun_F";
vehNATORBoat = "B_Boat_Transport_01_F";
vehNATOBoats = [vehNATOBoat,vehNATORBoat,"B_APC_Wheeled_01_cannon_F"];
//Planes
vehNATOPlane = "CUP_B_A10_DYN_USA";
vehNATOPlaneAA = "CUP_B_A10_DYN_USA";
vehNATOTransportPlanes = ["CUP_B_MV22_USMC"];
//Heli
vehNATOPatrolHeli = "CUP_B_MH6J_OBS_USA";
vehNATOTransportHelis = ["CUP_B_CH47F_USA",vehNATOPatrolHeli,"CUP_B_UH60M_US"];
vehNATOAttackHelis = ["CUP_B_AH6J_USA","CUP_B_AH64D_DL_USA"];
//UAV
vehNATOUAV = "CUP_B_USMC_DYN_MQ9";
vehNATOUAVSmall = "B_UAV_01_F";
//Artillery
vehNATOMRLS = "CUP_B_M270_HE_USA";
vehNATOMRLSMags = "CUP_12Rnd_MLRS_HE";
//Combined Arrays
vehNATONormal = vehNATOLight + vehNATOTrucks + [vehNATOAmmoTruck, "CUP_B_MTVR_Refuel_USA", "CUP_B_HMMWV_Ambulance_USA", vehNATORepairTruck,"CUP_B_M113_desert_USA"];
vehNATOAir = vehNATOTransportHelis + vehNATOAttackHelis + [vehNATOPlane,vehNATOPlaneAA] + vehNATOTransportPlanes;

//Militia Vehicles
if ((gameMode != 4) and (!hasFFAA)) then
	{
	vehFIAArmedCar = "CUP_B_HMMWV_SOV_M2_USA";
	vehFIATruck = "CUP_B_MTVR_USA";
	vehFIACar = "CUP_B_HMMWV_Unarmed_USA";
	};

//Police Vehicles
vehPoliceCar = "CUP_C_UAZ_Open_TK_CIV";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Statics
NATOMG = "I_G_HMG_02_high_F";
staticATOccupants = "B_static_AT_F";
staticAAOccupants = "B_static_AA_F";
NATOMortar = "B_Mortar_01_F";

//Static Weapon Bags
MGStaticNATOB = "I_G_HMG_02_high_weapon_F";
ATStaticNATOB = "B_AT_01_weapon_F";
AAStaticNATOB = "B_AA_01_weapon_F";
MortStaticNATOB = "B_Mortar_01_weapon_F";
//Short Support
supportStaticNATOB = "I_G_HMG_02_support_F";
//Tall Support
supportStaticNATOB2 = "I_G_HMG_02_support_high_F";
//Mortar Support
supportStaticNATOB3 = "B_Mortar_01_support_F";
