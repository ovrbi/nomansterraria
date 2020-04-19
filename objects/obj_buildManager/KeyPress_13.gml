/// @description Insert description here
//show_debug_message("ping");
//alarm[0] = 1;

var ship = instance_create_layer(0,0,"Instances",obj_ship);
ship.persistent = true;
obj_messenger.ship = ship;
obj_messenger.sx = ship.x;
obj_messenger.sy = ship.y;
//alarm[1] = 2;
//room_goto(1);