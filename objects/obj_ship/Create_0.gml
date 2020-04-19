/// @description Insert description here
// You can write your code in this editor
shipmatrix = obj_messenger.buildmatrix;
/*
var fixture = physics_fixture_create();
physics_fixture_set_polygon_shape(fixture);
physics_fixture_add_point(fixture, 0, 0);
physics_fixture_add_point(fixture, 8, 0);
physics_fixture_add_point(fixture, 8, 8);
physics_fixture_add_point(fixture, 0, 8);
physics_fixture_set_density(fixture, 20);
physics_fixture_set_restitution(fixture, 0.1);
physics_fixture_set_linear_damping(fixture, 0.6);
physics_fixture_set_angular_damping(fixture, 0.6);
physics_fixture_set_friction(fixture, 0.2);
physics_fixture_bind(fixture, id);
physics_fixture_delete(fixture);
*/

width = obj_messenger.maxWidth;
height = obj_messenger.maxHeight;

var totalmass = 0;
var totalhp = 0;
var ministack = ds_stack_create();
for (var xx = 0; xx<width;xx++){
	for (var yy = 0; yy < height;yy++){
		//show_debug_message(string(xx)+";"+string(yy));
		var part = shipmatrix[xx,yy];
		if (part != 0){
			//gravx += xx*blockSize*obj_sdb.mass[part.idee];
			//gravy += yy*blockSize*obj_sdb.mass[part.idee];
			part.ship = id;
			totalmass += obj_sdb.mass[part.idee];
			//show_debug_message(string (gravx)+";"+string(gravy)+";"+string(totalmass));
			totalhp += obj_sdb.hp[part.idee]
			//part.active = true;
			part.persistent = false;
			ds_stack_push(ministack,part);
			
			
			
			#region fixture
			//*
			var fixture = physics_fixture_create();
			scr_getfixture(fixture,part,xx,yy);
			
			/*
			physics_fixture_set_polygon_shape(fixture);
			show_debug_message(string(xx*blockSize)+";"+string(yy*blockSize));
			physics_fixture_add_point(fixture, xx*blockSize, yy*blockSize);
			show_debug_message(string((xx+1)*blockSize)+";"+string(yy*blockSize));
			physics_fixture_add_point(fixture, (xx+1)*blockSize, yy*blockSize);
			show_debug_message(string((xx+1)*blockSize)+";"+string((yy+1)*blockSize));
			physics_fixture_add_point(fixture, (xx+1)*blockSize, (yy+1)*blockSize);
			show_debug_message(string(xx*blockSize)+";"+string((yy+1)*blockSize));
			physics_fixture_add_point(fixture, xx*blockSize, (yy+1)*blockSize);
			//*/
			
			physics_fixture_set_density(fixture, obj_sdb.mass[part.idee]);
			physics_fixture_set_restitution(fixture, 0.1);
			physics_fixture_set_linear_damping(fixture, 0.6);
			physics_fixture_set_angular_damping(fixture, 0.6);
			physics_fixture_set_friction(fixture, 0.2);
			//*/
			
			/*
			var fixture = physics_fixture_create();
			physics_fixture_set_polygon_shape(fixture);
			physics_fixture_add_point(fixture, 0, 0);
			physics_fixture_add_point(fixture, blockSize, 0);
			physics_fixture_add_point(fixture, blockSize, blockSize);
			physics_fixture_add_point(fixture, 0, blockSize);
			physics_fixture_set_density(fixture, obj_sdb.mass[part.idee]);
			physics_fixture_set_restitution(fixture, 0.1);
			physics_fixture_set_linear_damping(fixture, 0.6);
			physics_fixture_set_angular_damping(fixture, 0.6);
			physics_fixture_set_friction(fixture, 0.2);
			//*/
			

			
			physics_fixture_bind(fixture, id);
			
			//physics_fixture_bind_ext(fixture, id,xx*blockSize,yy*blockSize);
			physics_fixture_delete(fixture);
			
			#endregion
			
			
		}
	}
}
//show_debug_message(totalmass);
mass = totalmass;
radius = sqrt(sqr(height)+sqr(width))*blockSize;
//ship.x = gravx/totalmass;
//ship.y = gravy/totalmass;

//show_debug_message(string(ship.x)+";"+string(ship.y));

//obj_shippart.alarm[0] = 1;
while (!ds_stack_empty(ministack)){
	var part0 = ds_stack_pop(ministack);
	part0.angle = part0.image_angle - image_angle;
	part0.distance = sqrt(sqr(x-part0.x) + sqr(y-part0.y));
	part0.dangle = arctan2(x-part0.x,y-part0.y)+image_angle - (part0.dir - 1) * pi / 2;
	part0.lx = part0.x-x;
	part0.ly = part0.y-y;
	part0.active = true;
	
	//show_debug_message(dangle);
}