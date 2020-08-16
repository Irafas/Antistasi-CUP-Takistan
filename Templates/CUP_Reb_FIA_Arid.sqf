////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
nameTeamPlayer = if (worldName == "Tanoa") then {"SDK"} else {"FIA"};
SDKFlag = "Flag_FIA_F";
SDKFlagTexture = "\A3\Data_F\Flags\Flag_Altis_CO.paa";
typePetros = "CUP_I_TK_GUE_Soldier_AT";

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//First Entry is Guerilla, Second Entry is Para/Military
staticCrewTeamPlayer = "I_G_Soldier_unarmed_F";
SDKUnarmed = "I_G_Survivor_F";
SDKSniper = ["CUP_I_TK_GUE_Sniper","CUP_I_TK_GUE_Sniper"];
SDKATman = ["CUP_I_TK_GUE_Soldier_LAT","CUP_I_TK_GUE_Soldier_AT"];
SDKMedic = ["CUP_I_TK_GUE_Guerilla_Medic","CUP_I_TK_GUE_Guerilla_Medic"];
SDKMG = ["CUP_I_TK_GUE_Soldier_MG","CUP_I_TK_GUE_Soldier_MG"];
SDKExp = ["CUP_I_TK_GUE_Demo","CUP_I_TK_GUE_Demo"];
SDKGL = ["CUP_I_TK_GUE_Soldier_GL","CUP_I_TK_GUE_Soldier_GL"];
SDKMil = ["CUP_I_TK_GUE_Soldier","CUP_I_TK_GUE_Soldier"];
SDKSL = ["CUP_I_TK_GUE_Soldier_TL","CUP_I_TK_GUE_Soldier_TL"];
SDKEng = ["CUP_I_TK_GUE_Mechanic","CUP_I_TK_GUE_Mechanic"];

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
groupsSDKmid = [SDKSL,SDKGL,SDKMG,SDKMil];
groupsSDKAT = [SDKSL,SDKMG,SDKATman,SDKATman,SDKATman];
groupsSDKSquad = [SDKSL,SDKGL,SDKMil,SDKMG,SDKMil,SDKATman,SDKMil,SDKMedic];
groupsSDKSquadEng = [SDKSL,SDKGL,SDKMil,SDKMG,SDKExp,SDKATman,SDKEng,SDKMedic];
groupsSDKSquadSupp = [SDKSL,SDKGL,SDKMil,SDKMG,SDKATman,SDKMedic,[staticCrewTeamPlayer,staticCrewTeamPlayer],[staticCrewTeamPlayer,staticCrewTeamPlayer]];
groupsSDKSniper = [SDKSniper,SDKSniper];
groupsSDKSentry = [SDKGL,SDKMil];

//Rebel Unit Tiers (for costs)
sdkTier1 = SDKMil + [staticCrewTeamPlayer] + SDKMG + SDKGL + SDKATman;
sdkTier2 = SDKMedic + SDKExp + SDKEng;
sdkTier3 = SDKSL + SDKSniper;
soldiersSDK = sdkTier1 + sdkTier2 + sdkTier3;

////////////////////////////////////
//           VEHICLES            ///
////////////////////////////////////
//Military Vehicles
vehSDKBike = "CUP_C_TT650_TK_CIV";
vehSDKLightArmed = "CUP_I_Hilux_DSHKM_TK";
vehSDKAT = "CUP_I_Hilux_SPG9_TK";
vehSDKLightUnarmed = "CUP_I_Hilux_unarmed_TK";
vehSDKTruck = "CUP_I_V3S_Open_TKG";
//vehSDKHeli = "I_C_Heli_Light_01_civil_F";
vehSDKPlane = "I_C_Plane_Civil_01_F";
vehSDKBoat = "I_G_Boat_Transport_01_F";
vehSDKRepair = "I_G_Offroad_01_repair_F";

//Civilian Vehicles
civCar = "CUP_C_Volha_Blue_TKCIV";
civTruck = "CUP_C_LR_Transport_CTK";
civHeli = "C_Heli_Light_01_civil_F";
civBoat = "C_Boat_Transport_02_F";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Static Weapons
SDKMGStatic = "CUP_I_DSHKM_TK_GUE";
staticATteamPlayer = "CUP_I_SPG9_TK_GUE";
staticAAteamPlayer = "I_static_AA_F";
SDKMortar = "CUP_I_2b14_82mm_TK_GUE";
SDKMortarHEMag = "8Rnd_82mm_Mo_shells";
SDKMortarSmokeMag = "8Rnd_82mm_Mo_Smoke_white";

//Static Weapon Bags
MGStaticSDKB = "CUP_B_DShkM_Gun_Bag";
ATStaticSDKB = "CUP_B_SPG9_Gun_Bag";
AAStaticSDKB = "I_AA_01_weapon_F";
MortStaticSDKB = "CUP_B_Podnos_Gun_Bag";
//Short Support
supportStaticSDKB = "CUP_B_DShkM_TripodLow_Bag";
//Tall Support
supportStaticsSDKB2 = "CUP_B_DShkM_TripodHigh_Bag";
//Mortar Support
supportStaticsSDKB3 = "CUP_B_Podnos_Bipod_Bag"; // TODO Takistan, Seems to assume that the AT and AA use the same support, but with CUP SP9 uses a different support

////////////////////////////////////
//             ITEMS             ///
////////////////////////////////////
//Mines
ATMineMag = "ATMine_Range_Mag";
APERSMineMag = "APERSMine_Range_Mag";

//Breaching explosives
//Breaching APCs needs one demo charge
breachingExplosivesAPC = [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 1], ["Drone_Range_Mag", 1], ["CUP_Mine_M", 1], ["CUP_IED_V4_M", 1], ["CUP_IED_V2_M", 1], ["ATMine_Range_Mag", 1], ["ClaymoreDirectionalMine_Remote_Mag", 1], ["APERSBoundingMine_Range_Mag", 1], ["SLAMDirectionalMine_Wire_Mag", 1], ["APERSTripMine_Wire_Mag", 1], ["CUP_PipeBomb_M", 1], ["IEDLandSmall_Remote_Mag", 1], ["CUP_IED_V3_M", 1], ["IEDUrbanSmall_Remote_Mag", 1], ["CUP_IED_V1_M", 1], ["CUP_TimeBomb_M", 1], ["CUP_MineE_M", 1], ["ACE_FlareTripMine_Mag", 1], ["APERSMine_Range_Mag", 1]];
//Breaching tanks needs one satchel charge or two demo charges
breachingExplosivesTank = [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 1], ["Drone_Range_Mag", 1], ["CUP_Mine_M", 1], ["CUP_IED_V4_M", 1], ["CUP_IED_V2_M", 1], ["ATMine_Range_Mag", 1], ["ClaymoreDirectionalMine_Remote_Mag", 1], ["APERSBoundingMine_Range_Mag", 1], ["SLAMDirectionalMine_Wire_Mag", 1], ["APERSTripMine_Wire_Mag", 1], ["CUP_PipeBomb_M", 1], ["IEDLandSmall_Remote_Mag", 1], ["CUP_IED_V3_M", 1], ["IEDUrbanSmall_Remote_Mag", 1], ["CUP_IED_V1_M", 1], ["CUP_TimeBomb_M", 1], ["CUP_MineE_M", 1], ["ACE_FlareTripMine_Mag", 1], ["APERSMine_Range_Mag", 1]];

//Starting Unlocks
initialRebelEquipment append ["CUP_srifle_Mosin_Nagant", "CUP_SKS", "CUP_hgun_Makarov", "CUP_smg_vityaz"]; // Guns
initialRebelEquipment append ["CUP_5Rnd_762x54_Mosin_M", "CUP_10Rnd_762x39_SKS_M", "CUP_8Rnd_9x18_Makarov_M", "CUP_30Rnd_9x19_Vityaz"]; // Ammmo

 // Backpacks
initialRebelEquipment append ["B_FieldPack_oli","B_FieldPack_blk","B_FieldPack_ocamo","B_FieldPack_oucamo","B_FieldPack_cbr","B_FieldPack_khk"]; // Vanilla
initialRebelEquipment append ["CUP_B_RPGPack_Khaki"];

// Chest
initialRebelEquipment append ["CUP_V_O_TK_Vest_1", "CUP_V_I_Guerilla_Jacket", "CUP_V_CZ_vest15","V_Chestrig_blk","V_Chestrig_rgr","V_Chestrig_khk","V_Chestrig_oli"]; 

// Uniform
initialRebelEquipment append ["CUP_O_TKI_Khet_Partug_01","CUP_O_TKI_Khet_Partug_02","CUP_O_TKI_Khet_Partug_03","CUP_O_TKI_Khet_Partug_04","CUP_O_TKI_Khet_Partug_05","CUP_O_TKI_Khet_Partug_06"];
initialRebelEquipment append ["CUP_O_TKI_Khet_Jeans_01","CUP_O_TKI_Khet_Jeans_02","CUP_O_TKI_Khet_Jeans_03","CUP_O_TKI_Khet_Jeans_04"];

initialRebelEquipment append ["Binocular","acc_flashlight","acc_flashlight_smg_01","acc_flashlight_pistol"]; // etc...
//TFAR Unlocks
if (hasTFAR) then {initialRebelEquipment append ["tf_microdagr","tf_anprc152"]};
if (hasTFAR && startWithLongRangeRadio) then {initialRebelEquipment pushBack "tf_anprc155"};
