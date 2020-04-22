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
	//alarm[0] = 1;
	for (var i = 0; i < array_length_1d(planets);i++){
	planets[i].persistent = false;
	}
	var from = obj_messenger.planetfrom;
	//show_debug_message(from);
	var xx = obj_messenger.escapex;

	var angle = xx/planets[from].size*360;

	//show_debug_message(instance_exists(obj_ship));

	//var velangle = arctan2(obj_ship.phy_speed_y,obj_ship.phy_speed_x);
	//var ampl = obj_ship.phy_speed;

	//obj_ship.phy_position_x = lengthdir_x(planets[from].radius+40,angle)+planets[from].x;
	//obj_ship.phy_position_y = lengthdir_y(planets[from].radius+40,angle)+planets[from].y;
	//obj_ship.phy_rotation = obj_ship.phy_rotation - angle + 90;
	//obj_ship.phy_speed_x = lengthdir_x(ampl,angle+velangle);
	//obj_ship.phy_speed_y = lengthdir_y(ampl,angle+velangle);
	
	obj_ship.shipx = lengthdir_x(planets[from].radius+40,angle)+planets[from].x;
	obj_ship.shipy = lengthdir_y(planets[from].radius+40,angle)+planets[from].y;
	obj_ship.shipangle = obj_messenger.escapeangle - angle + 90;
	/*show_debug_message("Commanded: "+
	string(lengthdir_x(planets[from].radius+40,angle)+planets[from].x) + ";" +
	string(lengthdir_y(planets[from].radius+40,angle)+planets[from].y)
	);*/
	obj_ship.alarm[0] = 1;
	//obj_ship.shipspeedx = lengthdir_x(ampl,angle+velangle);
	//obj_ship.shipspeedy = lengthdir_y(ampl,angle+velangle);

//canstep = true;
//canstep = false;
alarm[0] = 2;
}