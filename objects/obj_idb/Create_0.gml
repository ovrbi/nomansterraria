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
i++;

//4 = multitool
name[i] = "Multitool";
type[i] = -1;
sprite[i] = -1;
bt[i] = -1;
drop[i] = -1;
desc[i] = "A handy tool capable of destroying most substances.";
stack[i] = 1;
i++;

