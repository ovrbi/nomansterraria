/// @description Insert description here
// You can write your code in this editor

/*
obj_messenger.ship.phy_position_x = obj_messenger.stx + obj_messenger.sx;
obj_messenger.ship.phy_position_y = obj_messenger.sty + obj_messenger.sy;
obj_messenger.ship.phy_active = true;
*/

show_debug_message("creating");
obj_messenger.ship = instance_create_layer(0,0,"Instances",obj_ship);

obj_messenger.ship.phy_position_x = obj_messenger.stx;
obj_messenger.ship.phy_position_y = obj_messenger.sty;
obj_messenger.ship.phy_active = true;
instance_destroy(obj_messenger.builder);

//show_message(string(obj_messenger.ship.x)+";"+string(obj_messenger.ship.y));