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
type[i] = "block";
sprite[i] = sp_dirt2;
bt[i] = 20;
drop[i] = 1;
desc[i] = "It's dirty.";
stack[i] = 99;
i++;
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