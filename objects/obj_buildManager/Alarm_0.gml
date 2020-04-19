/// @description Exiting the room - need to generate the ship
show_debug_message("pong");
var gravx = 0;
var gravy = 0;
var totalmass = 0;
var totalhp = 0;

for (var xx = 0; xx<maxWidth;xx++){
	for (var yy = 0; yy < maxHeight;yy++){
		//show_debug_message(string(xx)+";"+string(yy));
		var part = ship.shipmatrix[xx,yy];
		if (part != 0){
			gravx = xx*obj_sdb.mass[part.idee];
			gravy += yy*obj_sdb.mass[part.idee];
			totalmass += obj_sdb.mass[part.idee];
			totalhp += obj_sdb.hp[part.idee]
			part.active = true;
			part.persistent = true;
			
		}
	}
}
//show_debug_message(totalmass);
ship.mass = totalmass;
ship.x = gravx/totalmass;
ship.y = gravy/totalmass;

obj_shippart.alarm[0] = 1;

obj_messenger.ship = ship;
obj_messenger.sx = ship.x;
obj_messenger.sy = ship.y;
room_goto(1);