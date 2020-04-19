/// @description Exiting the room - need to generate the ship
//show_debug_message("pong");
//var gravx = 0;
//var gravy = 0;
var totalmass = 0;
var totalhp = 0;
var ministack = ds_stack_create();
for (var xx = 0; xx<maxWidth;xx++){
	for (var yy = 0; yy < maxHeight;yy++){
		//show_debug_message(string(xx)+";"+string(yy));
		var part = ship.shipmatrix[xx,yy];
		if (part != 0){
			//gravx += xx*blockSize*obj_sdb.mass[part.idee];
			//gravy += yy*blockSize*obj_sdb.mass[part.idee];
			totalmass += obj_sdb.mass[part.idee];
			//show_debug_message(string (gravx)+";"+string(gravy)+";"+string(totalmass));
			totalhp += obj_sdb.hp[part.idee]
			//part.active = true;
			part.persistent = true;
			ds_stack_push(ministack,part);
			
			#region fixture
			var fixture = physics_fixture_create();
			physics_fixture_set_box_shape(fixture, blockSize/2, blockSize/2);
			physics_fixture_set_density(fixture, obj_sdb.mass[part.idee]);
			physics_fixture_set_restitution(fixture, 0.1);
			physics_fixture_set_linear_damping(fixture, 0.6);
			physics_fixture_set_angular_damping(fixture, 0.6);
			physics_fixture_set_friction(fixture, 0.2);
			physics_fixture_bind_ext(fixture, ship, xx*blockSize, yy*blockSize);
			physics_fixture_delete(fixture);
			
			#endregion
			
		}
	}
}
//show_debug_message(totalmass);
ship.mass = totalmass;
ship.radius = sqrt(sqr(maxHeight)+sqr(maxWidth))*blockSize;
//ship.x = gravx/totalmass;
//ship.y = gravy/totalmass;

//show_debug_message(string(ship.x)+";"+string(ship.y));

//obj_shippart.alarm[0] = 1;
while (!ds_stack_empty(ministack)){
	var part0 = ds_stack_pop(ministack);
	part0.angle = part0.image_angle - ship.image_angle;
	part0.distance = sqrt(sqr(ship.x-part0.x) + sqr(ship.y-part0.y));
	part0.dangle = arctan2(ship.x-part0.x,ship.y-part0.y) + ship.image_angle;
	part0.lx = part0.x-ship.x;
	part0.ly = part0.y-ship.y;
	part0.active = true;
	//show_debug_message(dangle);
}


obj_messenger.ship = ship;
obj_messenger.sx = ship.x;
obj_messenger.sy = ship.y;
//alarm[1] = 2;
room_goto(1);