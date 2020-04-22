/// @description Insert description here
// You can write your code in this editor
//if (instance_exists(obj_WorldManager)) instance_destroy(obj_WorldManager);


if (canstep) {
for (var i = 0; i < array_length_1d(planets);i++)
{
	//show_debug_message(i);
	if (point_distance(planets[i].x,planets[i].y,obj_player.x,obj_player.y)<planets[i].radius){
		
		//obj_messenger.totype = planets[i].type;
		//show_debug_message(point_direction(planets[i].x,planets[i].y,obj_player.x,obj_player.y)/360*planets[i].size);
		var xx = point_direction(planets[i].x,planets[i].y,obj_player.x,obj_player.y)/360*planets[i].size;
		var yy = 32;
		
		if (instance_exists(obj_ship)){
			//with (obj_ship){
				obj_ship.persistent = true;
				
				var wid = obj_ship.width;
				var hei = obj_ship.height;
				
				for (var a = 0; a < wid;a++)
				{
					for (var b = 0; b<hei;b++)
					{
						
						obj_ship.shipmatrix[a,b].persistent = true;
					}
				}
			//}
			
			
			obj_ship.phy_position_x =xx;
			obj_ship.phy_position_y =yy;
			obj_ship.shipangle = obj_ship.phy_rotation + xx/planets[i].size*360 - 90;
			//show_debug_message(obj_ship.shipangle);
			obj_ship.shipx = xx;
			obj_ship.shipy = 32;
			
		}
		else {
			obj_player.x = xx;
			obj_player.y = yy;
		}
		
		
		if (!planets[i].generated){
			planets[i].save_map = ds_map_create();
			planets[i].save_bmap = ds_map_create();
			planets[i].save_emap = ds_map_create();
			//planets[i].save_phmap = ds_map_create();
			
			planets[i].roomid = room_duplicate(room0);
			planets[i].generated = true;
			
		}
		else{
			
		}
		planets[i].persistent = true;
		cando = true;
		//room_instance_add(planets[i].roomid,0,0,obj_WorldManager)
		obj_messenger.camready = false;
		room_goto(planets[0].roomid);
	}
}
	
}