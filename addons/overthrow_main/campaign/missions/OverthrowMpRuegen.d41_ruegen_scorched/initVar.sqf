
OT_nation = "Ruegen";
OT_saveName = "Overthrow.ruegen.001";

OT_tutorial_backstoryText = "Altis, the main island of the Republic of Altis and Stratis, is located in the Mediterranean Sea to the east of Malta. As of 2040, Altis is currently under occupation by NATO forces following a brutal civil war a half decade prior, and the nation is still recovering. NATO originally occupied the country under the promise of a complete withdrawal of forces and return to local democratic rule; despite this, NATO soldiers still occupy the island's military installations. The economy continues to stagnate and citizens are becoming increasingly angry at the lack of local autonomy.";
OT_startDate = [2040,7,14,8,00];

OT_startCameraPos = [11646.6,6406.52,2];
OT_startCameraTarget = [13808.2,6387.16,0];

//Used to control updates and persistent save compatability. When these numbers go up, that section will be reinitialized on load if required. (ie leave them alone)
OT_economyVersion = 2;
OT_NATOversion = 2;
OT_CRIMversion = 1;

OT_faction_NATO = "CUP_O_RU"; //configFile >> OT_faction_NATO_side  >> OT_faction_NATO
OT_faction_NATO_side = "East";
OT_Allowed_Factions = ["CUP_O_RU" ];
OT_spawnFaction = "CFP_I_WestUltra"; //This faction will have a rep in spawn town

OT_flag_NATO = "FlagCarrierRU";
OT_flag_NATO_Marker =  "Faction_RU";
OT_flag_CRIM = "FlagCarrierINS";
OT_flag_IND = "CUP_FlagCarrierIONblack_PMC";
OT_flagImage = "CUP\BaseConfigs\CUP_BaseConfigs\Data\Flags\flag_ion_white_co";
OT_flagMarker = "Faction_CUP_ION_PMC_white";

OT_populationMultiplier = 0.5; //Used to tweak populations per map

//Interactable items that spawn in your house
OT_item_Storage = "B_CargoNet_01_ammo_F"; //Your spawn ammobox
OT_item_Map = "Mapboard_altis_F";
OT_item_Tent = "Land_TentDome_F";
OT_item_Safe = "Land_MetalCase_01_small_F";
OT_item_Workbench = "Land_Workbench_01_F";

//Animals to spawn (@todo: spawn animals)
OT_allLowAnimals = ["Rabbit_F","Turtle_F"];
OT_allHighAnimals = ["Goat_random_F"];
OT_allFarmAnimals = ["Hen_random_F","Cock_random_F","Sheep_random_F"];
OT_allVillageAnimals = ["Hen_random_F","Cock_random_F"];
OT_allTownAnimals = ["Alsatian_Random_F","Fin_random_F"];

OT_fuelPumps = ["Land_FuelStation_02_pump_F","Land_FuelStation_01_pump_F","Land_fs_feed_F","Land_FuelStation_Feed_F"];

OT_churches = ["Land_Church_03_F","Land_Church_01_F","Land_Church_02_F","Land_Temple_Native_01_F"];

OT_language_local = "LanguageGRE_F";
OT_identity_local = "Head_Greek";

OT_language_western = "LanguageENG_F";
OT_identity_western = "Head_Euro";

OT_language_eastern = "LanguageCHI_F";
OT_identity_eastern = "Head_Asian";

OT_face_localBoss = "TanoanBossHead";


OT_civType_gunDealer = "C_man_p_fugitive_F";
OT_civType_local = "CUP_C_R_Citizen_03";
OT_civType_carDealer = "C_man_w_worker_F";
OT_civType_shopkeeper = "C_man_w_worker_F";
OT_civType_worker = "C_man_w_worker_F";
OT_civType_priest = "C_man_w_worker_F";
OT_vehTypes_civ = []; //populated automatically, but you can add more here and they will appear in streets
OT_vehType_distro = "C_Van_01_box_F";
OT_vehType_ferry = "C_Boat_Transport_02_F";
OT_vehType_service = "C_Offroad_01_repair_F";
OT_vehTypes_civignore = ["C_Hatchback_01_F","C_Hatchback_01_sport_F",OT_vehType_service]; //Civs cannot drive these vehicles for whatever reason

OT_illegalHeadgear = ["H_MilCap_gen_F","H_Beret_gen_F","H_HelmetB_TI_tna_F"];
OT_illegalVests = ["V_TacVest_gen_F"];
_civs = format["(getNumber( _x >> ""scope"" ) isEqualTo 2 ) && ((configName _x) isKindOf ""CAManBase"")&& (getText( _x >> ""faction"" ) isEqualTo '%1')", "CUP_C_CHERNARUS" ] configClasses ( configFile >> "cfgVehicles" );
//OT_clothes_locals = ["U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Bandit_3_F","U_C_Poor_1","U_C_Poor_2","U_C_Poor_shorts_1","U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_redwhite","U_C_Poloshirt_stripped"];
OT_clothes_locals = [];
{OT_clothes_locals pushBack (getText( _x >> "uniformClass" )); } forEach _civs;
OT_clothes_expats = ["U_I_C_Soldier_Bandit_5_F","U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_redwhite","U_C_Poloshirt_salmon","U_C_Poloshirt_stripped","U_C_Man_casual_6_F","U_C_Man_casual_4_F","U_C_Man_casual_5_F"];
OT_clothes_tourists = [];
OT_clothes_priest = "U_C_Man_casual_2_F";
OT_clothes_port = "U_Marshal";
OT_clothes_shops = ["U_C_Man_casual_2_F","U_C_Man_casual_3_F","U_C_Man_casual_1_F"];
OT_clothes_carDealers = ["U_Marshal"];
OT_clothes_harbor = ["U_C_man_sport_1_F","U_C_man_sport_2_F","U_C_man_sport_3_F"];
//OT_clothes_guerilla = ["U_I_C_Soldier_Para_1_F","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_4_F"];
_civs = format["(getNumber( _x >> ""scope"" ) isEqualTo 2 ) && ((configName _x) isKindOf ""CAManBase"")&& (getText( _x >> ""faction"" ) isEqualTo '%1')", "CUP_I_PMC_ION" ] configClasses ( configFile >> "cfgVehicles" );
OT_clothes_guerilla = [];
{OT_clothes_guerilla pushBack (getText( _x >> "uniformClass" )); } forEach _civs;
//OT_clothes_guerilla = ["U_I_C_Soldier_Para_1_F","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_4_F"];
OT_clothes_police = ["U_I_G_resistanceLeader_F","U_BG_Guerilla2_1","U_BG_Guerilla2_3","U_I_C_Soldier_Para_4_F"];
OT_vest_police = "V_TacVest_blk_POLICE";
OT_hat_police = "H_Cap_police";
OT_clothes_mob = "U_I_C_Soldier_Camo_F";

//NATO stuff
OT_NATO_HMG = "CUP_I_DSHKM_NAPA";
OT_NATO_Vehicles_AirGarrison = [
	["CUP_O_Mi24_P_Dynamic_RU",1],
	["CUP_O_MI6A_RU",1],
	["O_Heli_Light_02_unarmed_F",1],
	["CUP_O_Mi8_VIV_RU",2],
	["CUP_O_Mi8_medevac_RU",3],
	["CUP_O_Ka50_DL_RU",1],
	["CUP_O_Mi8_RU",2]
];

OT_NATO_Vehicles_JetGarrison = [
	["CUP_O_Su25_Dyn_RU",1],
	["CUP_O_SU34_RU",1]
];

OT_NATO_Vehicles_StaticAAGarrison = [
	"CUP_O_ZU23_RU",
	"O_static_AA_F"
]; //Added to every airfield

if(OT_hasJetsDLC) then {
	//OT_NATO_Vehicles_JetGarrison pushback ["B_Plane_Fighter_01_F",1];
	//OT_NATO_Vehicles_JetGarrison pushback ["B_Plane_Fighter_01_Stealth_F",1];
	OT_NATO_Vehicles_StaticAAGarrison pushback "O_Radar_System_02_F";
	OT_NATO_Vehicles_StaticAAGarrison pushback "O_SAM_System_04_F";
};

OT_NATO_StaticGarrison_LevelOne = ["CUP_I_DSHKM_NAPA"];
OT_NATO_StaticGarrison_LevelTwo = ["CUP_O_KORD_high_RU","CUP_O_KORD_RU","CUP_O_AGS_RU","CUP_O_BRDM2_RUS"];
OT_NATO_StaticGarrison_LevelThree = ["CUP_O_Metis_RU","CUP_O_ZU23_RU","CUP_O_KORD_high_RU","CUP_O_KORD_RU","CUP_O_KORD_high_RU","CUP_O_BRDM2_RUS","CUP_O_GAZ_Vodnik_AGS_RU"];

OT_NATO_CommTowers = ["Land_TTowerBig_1_F","Land_TTowerBig_2_F"];

OT_NATO_Unit_Sniper = "CUP_O_RU_Sniper_VDV";
OT_NATO_Unit_Spotter = "CUP_O_RU_Spotter_VDV";
OT_NATO_Unit_AA_spec = "CUP_O_RU_Soldier_AA_VDV";
OT_NATO_Unit_AA_ass = "CUP_O_INS_Soldier_Ammo";
OT_NATO_Unit_HVT = "CUP_O_RU_Commander_VDV";
OT_NATO_Unit_TeamLeader = "CUP_O_RU_Soldier_TL_VDV";
OT_NATO_Unit_SquadLeader = "CUP_O_RU_Soldier_SL_VDV";

OT_NATO_Unit_PoliceCommander = "B_Gen_Commander_F";
OT_NATO_Unit_Police = "CUP_C_C_Policeman_02";
OT_NATO_Vehicle_PoliceHeli = "B_Heli_Light_01_F";
OT_NATO_Vehicle_Quad = "B_Quadbike_01_F";
OT_NATO_Vehicle_Police = "B_GEN_Offroad_01_gen_F";
OT_NATO_Vehicle_Transport = ["CUP_O_Ural_Open_RU","CUP_O_Ural_RU"];
OT_NATO_Vehicle_Transport_Light = "CUP_O_UAZ_Unarmed_RU";
OT_NATO_Vehicles_PoliceSupport = ["CUP_O_UAZ_MG_RU","CUP_O_UAZ_AGS30_RU","CUP_O_UAZ_SPG9_RU","CUP_O_Ka60_Whale_CSAT"];
OT_NATO_Vehicles_ReconDrone = "CUP_O_Pchela1T_RU";
OT_NATO_Vehicles_CASDrone = "O_UAV_02_dynamicLoadout_F";
OT_NATO_Vehicles_AirSupport = ["CUP_O_Mi24_P_Dynamic_RU"];
OT_NATO_Vehicles_AirSupport_Small = ["CUP_O_Ka60_Whale_CSAT","CUP_O_Ka60_Grey_RU"];
OT_NATO_Vehicles_GroundSupport = ["CUP_O_GAZ_Vodnik_AGS_RU","CUP_O_BRDM2_RUS","CUP_O_UAZ_MG_RU","CUP_O_BTR60_RU"];
OT_NATO_Vehicles_TankSupport = ["CUP_O_T72_RU","CUP_O_T90_RU"];
OT_NATO_Vehicles_Convoy = ["CUP_O_UAZ_SPG9_RU","CUP_O_BRDM2_RUS","CUP_O_UAZ_MG_RU","CUP_O_BTR60_RU","CUP_O_GAZ_Vodnik_AGS_RU","CUP_O_UAZ_AGS30_RU"];
OT_NATO_Vehicles_AirWingedSupport = ["CUP_O_Su25_Dyn_RU"];
OT_NATO_Vehicle_AirTransport_Small = "O_Heli_Light_02_unarmed_F";
OT_NATO_Vehicle_AirTransport = ["CUP_O_Mi8_RU","CUP_O_Mi8_medevac_RU"];
OT_NATO_Vehicle_AirTransport_Large = "CUP_O_MI6A_RU";
OT_NATO_Vehicle_Boat_Small = "O_Boat_Armed_01_hmg_F";
OT_NATO_Vehicles_APC = ["CUP_O_BMP2_RU","CUP_O_BTR60_RU","CUP_O_MTLB_pk_WDL_RU","CUP_O_BTR90_RU"];

OT_NATO_Sandbag_Curved = "Land_BagFence_01_round_green_F";
OT_NATO_Barrier_Small = "Land_HBarrier_01_line_5_green_F";
OT_NATO_Barrier_Large = "Land_HBarrier_01_wall_6_green_F";

OT_NATO_Mortar = "CUP_O_2b14_82mm_RU";

OT_NATO_Vehicle_HVT = "CUP_O_BTR90_HQ_RU";

OT_NATO_Vehicle_CTRGTransport = "CUP_O_Mi24_P_Dynamic_RU";

OT_NATO_weapons_Police = [];
OT_NATO_weapons_Pistols = ["hgun_Pistol_heavy_01_F","hgun_ACPC2_F","hgun_P07_F","hgun_Rook40_F"];

//Criminal stuff
OT_CRIM_Unit = "C_man_p_fugitive_F";
//OT_CRIM_Clothes = ["U_I_C_Soldier_Bandit_3_F","U_BG_Guerilla3_1","U_C_HunterBody_grn","U_I_G_Story_Protagonist_F"];

_civs = format["(getNumber( _x >> ""scope"" ) isEqualTo 2 ) && ((configName _x) isKindOf ""CAManBase"")&& (getText( _x >> ""vehicleClass"" ) isEqualTo '%1')", "CUP_I_GUER_Napa_Gue" ] configClasses ( configFile >> "cfgVehicles" );
OT_CRIM_Clothes = [];
{OT_CRIM_Clothes pushBack (getText( _x >> "uniformClass" )); } forEach _civs;


OT_CRIM_Goggles  = [];
{OT_CRIM_Goggles  pushBack (getArray( _x  >> "linkedItems") select 0); } forEach _civs;

//OT_CRIM_Goggles = ["G_Balaclava_blk","G_Balaclava_combat","G_Balaclava_lowprofile","G_Balaclava_oli","G_Bandanna_blk","G_Bandanna_khk","G_Bandanna_oli","G_Bandanna_shades","G_Bandanna_sport","G_Bandanna_tan"];
OT_CRIM_Weapons = ["CUP_srifle_CZ550","arifle_AKM_F","arifle_AKM_F","arifle_AKS_F"];
OT_CRIM_Pistols = ["hgun_Pistol_heavy_01_F","hgun_ACPC2_F","hgun_P07_F","hgun_Rook40_F"];
OT_CRIM_Launchers = ["launch_RPG32_F","launch_RPG7_F","launch_RPG7_F","launch_RPG7_F"];

OT_piers = ["Land_PierConcrete_01_4m_ladders_F","Land_PierWooden_01_platform_F","Land_PierWooden_01_hut_F","Land_PierWooden_02_hut_F"]; //spawns dudes that sell boats n stuff
OT_offices = ["Land_MultistoryBuilding_01_F","Land_MultistoryBuilding_04_F"];
OT_portBuildings = ["Land_Warehouse_01_F","Land_Warehouse_02_F","Land_ContainerLine_01_F","Land_ContainerLine_02_F","Land_ContainerLine_03_F"];
OT_airportTerminals = ["Land_Mil_ControlTower_dam","Land_Mil_ControlTower","Land_Airport_01_terminal_F","Land_Airport_02_terminal_F","Land_Hangar_F","Land_TentHangar_V1_F"];
OT_portBuilding = "Land_WarehouseShelter_01_F";
OT_policeStation = "Land_Cargo_House_V3_F";
OT_warehouse = "Land_Warehouse_03_F";
OT_warehouses = [OT_warehouse,"Land_dp_smallFactory_F","Land_i_Shed_Ind_F"];
OT_barracks = "Land_Barracks_01_grey_F";
OT_workshopBuilding = "Land_Cargo_House_V4_F";
OT_refugeeCamp = "Land_Medevac_house_V1_F";
OT_trainingCamp = "Land_IRMaskingCover_02_F";
OT_hardwareStore = "Land_dp_smallFactory_F";
OT_radarBuilding = "Land_Radar_Small_F";

OT_NATO_Vic_Faction = OT_faction_NATO;
OT_allBLUVehicles = [];
OT_allBLUOffensiveVehicles = [];
_all = format["(getNumber( _x >> ""scope"" ) isEqualTo 2 ) && (getText( _x >> ""faction"" ) isEqualTo '%1')",OT_NATO_Vic_Faction ] configClasses ( configFile >> "cfgVehicles" );

//It's a vehicle
{
private _cls = configName _x;
if !(_cls isKindOf "Bag_Base" || _cls isKindOf "StaticWeapon") then {
				if(_cls isKindOf "LandVehicle" || _cls isKindOf "Air" || _cls isKindOf "Ship") then {
					//_vehicles pushback _cls;
					//_numblueprints = _numblueprints + 1;
					//if(_side isEqualTo 1) then {
					if(true) then {
						private _threat = getArray (_x >> "threat");
						if(_threat#0 > 0.5) then {
							OT_allBLUOffensiveVehicles pushBackUnique _cls;
						}else{
							OT_allBLUVehicles pushBackUnique _cls;
						};
					};
				};
};
} forEach _all;