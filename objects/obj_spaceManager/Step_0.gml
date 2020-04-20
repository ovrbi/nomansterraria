/// @description Insert description here
// You can write your code in this editor

if (canstep) {
for (var i = 0; i < array_length_1d(planets);i++)
{
	//show_debug_message(i);
	if (point_distance(planets[i].x,planets[i].y,obj_player.x,obj_player.y)<planets[i].radius){
		
		//obj_messenger.totype = planets[i].type;
		show_debug_message(point_direction(planets[i].x,planets[i].y,obj_player.x,obj_player.y)/360*planets[i].size);
		var xx = point_direction(planets[i].x,planets[i].y,obj_player.x,obj_player.y)/360*planets[i].size;
		var yy = 10;
		
		if (instance_exists(obj_ship)){
			with (obj_ship){
				persistent = true;
				
				for (var a = 0; a < width;a++)
				{
					for (var j = 0; j<height;j++)
					{
						
						shipmatrix[a,j].persistent = true;
					}
				}
			}
			
			
			obj_ship.phy_position_x =xx;
			obj_ship.phy_position_y =yy+50;
			
		}
		else {
			obj_player.x = xx;
			obj_player.y = yy;
		}
		if (!planets[i].generated){
			planets[i].save_map = ds_map_create();
			planets[i].save_bmap = ds_map_create();
			planets[i].save_emap = ds_map_create();
			
			planets[i].roomid = room_duplicate(room0);
			planets[i].generated = true;
			
		}
		else{
			
		}
		planets[i].persistent = true;
		cando = true;
		room_goto(planets[i].roomid);
	}
}
	
}