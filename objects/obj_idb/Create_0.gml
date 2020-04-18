/// @description Item DataBase
var i = 0;

//0 = nothing
name[i] = "";
type[i] = -1;
sprite[i] = -1;
bt[i] = 20;
drop[i] = i;
desc[i] = "Nothingness compels you. How did you get this anyways?";
stack[i] = 1;
i++;

//1 = dirt
name[i] = "Dirt";
type[i] = 1;
sprite[i] = sp_dirt2;
bt[i] = 20;
drop[i] = i;
desc[i] = "It's dirty.";
stack[i] = 99;
i++;

//2 = stone
name[i] = "Stone";
type[i] = 1;
sprite[i] = sp_stone;
bt[i] = 60;
drop[i] = i;
desc[i] = "It's stoney.";
stack[i] = 99;
i++;

//3 = testblock
name[i] = "testblock";
type[i] = 1;
sprite[i] = sp_testblock;
bt[i] = 1;
drop[i] = i;
desc[i] = "trans rights";
stack[i] = 1;
i++;

//4 = multitool
name[i] = "Multitool";
type[i] = -1;
sprite[i] = -1;
bt[i] = -1;
drop[i] = -1;
desc[i] = "A handy tool capable\nof destroying most\nsubstances.";
stack[i] = 1;
i++;

//5 = coal ore
name[i] = "Coal Ore";
type[i] = 1;
sprite[i] = sp_coal_ore;
bt[i] = 80;
drop[i] = i+1;
desc[i] = "A chunk of stone\ncontaining lumps\nof coal.";
stack[i] = 99;
i++;

//6 = coal
name[i] = "Coal";
type[i] = 0;
sprite[i] = sp_coal;
bt[i] = 0;
drop[i] = i;
desc[i] = "A lump of carbon.";
stack[i] = 99;
i++;

//7 = Iron Ore
name[i] = "Iron Ore";
type[i] = 1;
sprite[i] = sp_iron_ore;
bt[i] = 100;
drop[i] = i;
desc[i] = "A chunk of stone\ncontaining iron\nveins.";
stack[i] = 99;
i++;

//8 = Iron
name[i] = "Iron";
type[i] = 0;
sprite[i] = sp_iron;
bt[i] = 0;
drop[i] = i;
desc[i] = "A tough metal ingot.";
stack[i] = 99;
i++;

//9 = Platform
name[i] = "Platform";
type[i] = 1;
sprite[i] = sp_platform;
bt[i] = 10;
drop[i] = i;
desc[i] = "Needed to begin\nshipbuilding.";
stack[i] = 99;
i++;

//10 = Infernum Ore
name[i] = "Infernum Ore";
type[i] = 1;
sprite[i] = sp_infernum_ore;
bt[i] = 20;
drop[i] = i+1;
desc[i] = "A chunk of stone\ncontaining fiery\nveins.";
stack[i] = 99;
i++;

//11 = Infernum
name[i] = "Infernum";
type[i] = 0;
sprite[i] = sp_infernum;
bt[i] = 0;
drop[i] = i;
desc[i] = "An extremely easily\ncombustable material.";
stack[i] = 99;
i++;

//12 = Luxus Ore
name[i] = "Luxus Ore";
type[i] = 1;
sprite[i] = sp_luxus_ore;
bt[i] = 60;
drop[i] = i+1;
desc[i] = "A chunk of stone containing\nbright bits, reminding you\nof sunshine.";
stack[i] = 99;
i++;

//13 = Luxus
name[i] = "Luxus";
type[i] = 0;
sprite[i] = sp_luxus;
bt[i] = 0;
drop[i] = i;
desc[i] = "Light frozen in a\nsolid crystal.";
stack[i] = 99;
i++;

//14 = Lilum Ore
name[i] = "Lilium Ore";
type[i] = 1;
sprite[i] = sp_lilium_ore;
bt[i] = 90;
drop[i] = i+1;
desc[i] = "A chunk of stone containing\npurple nuggets that seem\nto draw in light.";
stack[i] = 99;
i++;

//15 = Lilium
name[i] = "Lilium";
type[i] = 0;
sprite[i] = sp_lilium;
bt[i] = 0;
drop[i] = i;
desc[i] = "A rare material with\nabsorbing properties.";
stack[i] = 99;
i++;

//16 = Copper Ore
name[i] = "Copper Ore";
type[i] = 1;
sprite[i] = sp_copper_ore;
bt[i] = 65;
drop[i] = i;
desc[i] = "A chunk of stone containing/norange veins.";
stack[i] = 99;
i++;

//17 = Copper
name[i] = "Copper";
type[i] = 0;
sprite[i] = sp_copper;
bt[i] = 0;
drop[i] = i;
desc[i] = "A metal with excellent/n conductive properties.";
stack[i] = 99;
i++;

//18 = Titanium Ore
name[i] = "Titanium Ore";
type[i] = 1;
sprite[i] = sp_titanium_ore;
bt[i] = 100;
drop[i] = i;
desc[i] = "A chunk of stone conatining/n gray veins.";
stack[i] = 99;
i++;

//19 = Titanium
name[i] = "Titanium";
type[i] = 0;
sprite[i] = sp_titanium;
bt[i] = 0;
drop[i] = i;
desc[i] = "A highly durable metal.";
stack[i] = 99;
i++;