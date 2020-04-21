/// @description Insert description here
// You can write your code in this editor
//show_debug_message("aaa");
persistent = false;

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

obj_camera.x = x;
obj_camera.y = y;


phy_position_x = shipx;
phy_position_y = shipy;

if (room!=rm_space)
alarm[0] = 200;