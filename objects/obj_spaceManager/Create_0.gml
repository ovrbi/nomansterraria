/// @description Insert description here
// You can write your code in this editor
cando = false;
canstep = true;
var i = 0;
planets[i] = instance_create_layer(0, 0, "Instances",obj_planet);
planets[i].size = worldWidth*blockSize;
planets[i].radius = planets[0].size / 2 / pi;
planets[i].type = 1;
planets[i].save_map = 0;
planets[i].save_bmap = 0;
planets[i].save_emap = 0;
//planets[i].save_phmap = 0;
planets[i].seed = irandom_range(10000000,100000000);
planets[i].pid = i;
planets[i].generated = false;
i++;

planets[i] = instance_create_layer(-3300, -900, "Instances",obj_planet);
planets[i].size = worldWidth*blockSize;
planets[i].radius = planets[0].size / 2 / pi;
planets[i].type = 2;
planets[i].save_map = 0;
planets[i].save_bmap = 0;
planets[i].save_emap = 0;
//planets[i].save_phmap = 0;
planets[i].seed = irandom_range(10000000,100000000);
planets[i].pid = i;
planets[i].generated = false;
i++;

planets[i] = instance_create_layer(-2700, -4700, "Instances",obj_planet);
planets[i].size = worldWidth*blockSize;
planets[i].radius = planets[0].size / 2 / pi;
planets[i].type = 3;
planets[i].save_map = 0;
planets[i].save_bmap = 0;
planets[i].save_emap = 0;
//planets[i].save_phmap = 0;
planets[i].seed = irandom_range(10000000,100000000);
planets[i].pid = i;
planets[i].generated = false;
i++;

//ready = true;