/*
Use the following to fetch town data automatically, or copy/paste to override/tweak

OT_townData = [];

{
    OT_townData pushback [getArray(_x >> "position"),getText(_x >> "name")];
}foreach("(getText(_x >> 'type') in ['NameCity','NameVillage','NameCityCapital'])" configClasses (configfile >> "CfgWorlds" >> "Altis" >> "Names"));

stuff = nearestLocations [[0,0,0], ["Name","NameCity","NameCityCapital","NameVillage"], 40000];
temp = [];
{temp pushBack [AGLtoASL (position _x), text _x];}foreach stuff; temp


*/

OT_townData = [
[[1195.83,676.14,0],"Elmenhorst"],[[575.58,1852.45,0],"Negast"],[[1974.88,2330.06,0],"Andershof"],[[1722.33,2836.75,0],"Frankensiedlung"],[[3084.66,1344.68,0],"Brandshagen"],[[1434.64,3463.02,0],"Stralsund"],[[1369.02,3932.22,0],"Kniepervorstadt"],[[4413.48,597.95,0],"Reinberg"],[[1328.75,4354.54,0],"Parow"],[[293.77,4637.8,0],"Schmiedshagen"],[[2295.89,4076.04,0],"Altefaehr"],[[3745.3,3220.18,0],"Gustow"],[[471.3,5421,0],"Prohn"],[[4813.22,3152.38,0],"Poseritz"],[[3578.77,4872.25,0],"Rambin"],[[310.44,6278.51,0],"Klausdorf"],[[5483.83,3339.88,0],"Zeiten"],[[6236.19,1588.89,0],"Losentitz"],[[5156.72,4916.85,0],"Samtens"],[[578.23,7164.43,0],"Barhoeft"],[[6181.44,3713.39,0],"Gartz"],[[3775.91,6144.3,0],"Gefaengnisinsel Liebitz"],[[3880.84,6781.05,0],"Gross Kubitz"],[[6507.23,4764.32,0],"Karnitz"],[[5228.83,6252.13,0],"Dreschwitz"],[[6703.38,5563.01,0],"Sehlen"],[[3225.47,8096.98,0],"Ummanz"],[[4553.08,7862.34,0],"Gingst"],[[8326.28,4791.52,0],"Putbus"],[[8761.72,4426.83,0],"Lauterbach"],[[7486.09,6628.54,0],"Bergen"],[[5622.94,8285.4,0],"Kluis"],[[6936.48,8125.92,0],"Patzig"],[[4512.14,9807.43,0],"Trent"],[[1851.81,10945.4,0],"Vitte"],[[9472.42,5861.33,0],"Zirkow"],[[7109.5,9169.38,0],"Gross Banzelvitz"],[[1975.95,11720.5,0],"Kloster"],[[5855.66,10526.8,0],"Neuenkirchen"],[[11710.3,2962.2,0],"Moenchsgut"],[[11055.6,5134.33,0],"Lanken-Granitz"],[[10638.6,6322.64,0],"Ostseebad Binz"],[[12532.9,2472.57,0],"Thiessow"],[[12176.6,5506.87,0],"Ostseebad Sellin"],[[4060.34,13042.4,0],"Dranske"],[[12944,4421.61,0],"Ostseebad Goehren"],[[5102.2,12794.8,0],"Wiek"],[[9624.5,10031.6,0],"Sagard"],[[8335.28,11147.2,0],"Glowe"],[[6412.39,12514.3,0],"Breege"],[[6048.48,13224.7,0],"Altenkirchen"],[[11272.8,9602.12,0],"Sassnitz"],[[10796.8,11108.3,0],"Hagen"],[[7330.3,14355.4,0],"Putgarten"]
];

OT_spawnTowns = ["Breege","Wiek", "Dranske"];
OT_capitals = ["Stralsund","Bergen","Sassnitz"]; //region capitals
OT_sprawling = ["Stralsund"];
