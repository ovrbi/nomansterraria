/// @description Insert description here
// You can write your code in this editor

//size, type
if (cando) {
for (var i = 0; i < array_length_1d(planets);i++){
	planets[i].persistent = false;
}
var from = obj_messenger.planetfrom;
var xx = obj_messenger.escapex;

var angle = xx/planets[from].size*360;


var velangle = arctan2(obj_ship.phy_speed_y,obj_ship.phy_speed_x);
var ampl = obj_ship.phy_speed;

obj_ship.phy_position_x = lengthdir_x(planets[from].radius+10,angle);
obj_ship.phy_position_y = lengthdir_y(planets[from].radius+10,angle);
obj_ship.phy_rotation = obj_ship.phy_rotation - angle;
obj_ship.phy_speed_x = lengthdir_x(ampl,angle+velangle);
obj_ship.phy_speed_y = lengthdir_y(ampl,angle+velangle);
}