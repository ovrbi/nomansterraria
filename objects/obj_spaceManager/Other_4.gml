/// @description Insert description here
// You can write your code in this editor

//size, type
if (cando) {
	var from = obj_messenger.planetfrom;
	var xx = obj_messenger.escapex;
	var angle = xx/planets[from].size*360;
	
	obj_ship.shipx = lengthdir_x(planets[from].radius+40,angle)+planets[from].x;
	obj_ship.shipy = lengthdir_y(planets[from].radius+40,angle)+planets[from].y;
	canstep = false;
	alarm[0] = 1;
}