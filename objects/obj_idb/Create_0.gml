/// @description Item DataBase
var i = 0;

//0 = nothing
name[i] = "";
type[i] = -1;
sprite[i] = -1;
bt[i] = 20;
drop[i] = 0;
desc[i] = "";
stack[i] = 1;
i++;

//1 = dirt
name[i] = "Dirt";
type[i] = 1;
sprite[i] = sp_dirt2;
bt[i] = 20;
drop[i] = 1;
desc[i] = "It's dirty.";
stack[i] = 99;
i++;

//2 = stone
name[i] = "Stone";
type[i] = 1;
sprite[i] = sp_stone;
bt[i] = 60;
drop[i] = 2;
desc[i] = "It's stoney.";
stack[i] = 99;
i++;

//2 = testblock
name[i] = "testblock";
type[i] = 1;
sprite[i] = sp_testblock;
bt[i] = 1;
drop[i] = 3;
desc[i] = "trans rights";
stack[i] = 1;
i++;

//4 = multitool
name[i] = "Multitool";
type[i] = -1;
sprite[i] = -1;
bt[i] = -1;
drop[i] = -1;
desc[i] = "A handy tool\ncapable of destroying\nmost substances.";
stack[i] = 1;
i++;

//5 = coal ore
name[i] = "Coal Ore";
type[i] = 1;
sprite[i] = sp_coal_ore;
bt[i] = 80;
drop[i] = 5;
desc[i] = "A chunk of stone\ncontaining lumps\nof coal.";
stack[i] = 99;
i++;

//6 = Iron Ore
name[i] = "Iron Ore";
type[i] = 1;
sprite[i] = sp_iron_ore;
bt[i] = 100;
drop[i] = 6;
desc[i] = "A chuck of stone\ncontaining iron\nveins.";
stack[i] = 99;
i++;