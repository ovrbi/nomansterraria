/// @description Insert description here
// You can write your code in this editor
shipblueprint = obj_messenger.buildmatrix;

shipx = x;
shipy = y;
shipangle = image_angle;

com_x = 0;
com_y = 0;


x = 0;
y = 0;

retire = false;

width = array_height_2d(shipblueprint);
height = array_length_2d(shipblueprint,0);
//show_debug_message(string(height)+";"+string(width));
var totalmass = 0;
var totalhp = 0;
var ministack = ds_stack_create();
var i = 0;
for (var xx = 0; xx<width;xx++){
	for (var yy = 0; yy < height;yy++){
		//show_debug_message(string(xx)+";"+string(yy));
		shipmatrix[xx,yy] = 0;
		if (shipblueprint[xx,yy] != 0){
			var instructions = shipblueprint[xx,yy];
			//show_debug_message(array_length_1d(instructions));
			if (array_length_1d(instructions) == 3) var part = scr_placePart(xx*blockSize,yy*blockSize,instructions[0],instructions[1],instructions[2]);
			else var part = scr_placePart(xx*blockSize,yy*blockSize,instructions[1],instructions[0]);
			shipmatrix[xx,yy] = part;
			//show_debug_message("building");
			//gravx += xx*blockSize*obj_sdb.mass[part.idee];
			//gravy += yy*blockSize*obj_sdb.mass[part.idee];
			part.ship = id;
			totalmass += obj_sdb.mass[part.idee];
			//show_debug_message(string (gravx)+";"+string(gravy)+";"+string(totalmass));
			totalhp += obj_sdb.hp[part.idee];
			//part.active = true;
			part.persistent = false;
			ds_stack_push(ministack,part);
			
			
			if (obj_messenger.com_active){
				com_x = obj_messenger.com_x;
				com_y = obj_messenger.com_y;
			}
			else{
			#region fixture
			//*
			var fixture = physics_fixture_create();
			scr_getFixture(fixture,part,xx*blockSize,yy*blockSize);
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
			

			
			fixturearr[i] = physics_fixture_bind(fixture, id);
			i++;
			//physics_fixture_bind_ext(fixture, id,xx*blockSize,yy*blockSize);
			physics_fixture_delete(fixture);
			
			#endregion
			}
			
			
		}
	}
}
//show_debug_message(totalmass);
mass = totalmass; //might not be accurate to fixtures
radius = sqrt(sqr(height)+sqr(width))*blockSize;
if (!obj_messenger.com_active){
com_x = phy_com_x;
com_y = phy_com_y;


for (var i = 0; i < array_length_1d(fixturearr);i++) physics_remove_fixture(id, fixturearr[i]);

shipx +=com_x;
shipy += com_y;
}
x = com_x;
y = com_y;


for (var xx = 0; xx<width;xx++){
	for (var yy = 0; yy < height;yy++){
		//show_debug_message(string(xx)+";"+string(yy));
		var part = shipmatrix[xx,yy];
		part.persistent = false;
		if (part != 0){
			#region fixture
			var fixture = physics_fixture_create();
			scr_getFixture(fixture,part,xx*blockSize-com_x,yy*blockSize-com_y);
			physics_fixture_set_density(fixture, obj_sdb.mass[part.idee]);
			physics_fixture_set_restitution(fixture, 0.1);
			physics_fixture_set_linear_damping(fixture, 0.6);
			physics_fixture_set_angular_damping(fixture, 0.6);
			physics_fixture_set_friction(fixture, 0.2);
			physics_fixture_bind(fixture, id);
			physics_fixture_delete(fixture);
			
			#endregion
			
			
		}
	}
}


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

phy_position_x = shipx;
phy_position_y = shipy;

stabactive = false;
size = d1v(radius*2,convrate);
active = false;
//show_debug_message(string(phy_position_x)+";"+string(phy_position_y));