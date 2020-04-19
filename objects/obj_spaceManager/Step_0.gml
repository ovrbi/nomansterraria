/// @description Insert description here
// You can write your code in this editor
//if (ready) {
for (var i = 0; i < array_length_1d(planets);i++)
{
	show_debug_message(i);
	if (point_distance(planets[i].x,planets[i].y,obj_player.x,obj_player.y)<planets[i].radius){
		
		//obj_messenger.totype = planets[i].type;
		
		var xx = point_direction(planets[i].x,planets[i].y,obj_player.x,obj_player.y)/360*planets[i].size;
		var yy = 10;
		
		if (instance_exists(obj_ship)){
			obj_ship.phy_position_x =xx;
			obj_ship.phy_position_y =yy;
		}
		else {
			obj_player.x = xx;
			obj_player.y = yy;
		}
		if (planets[i].save_map == 0){
			planets[i].save_map = ds_map_create();
			planets[i].save_bmap = ds_map_create();
			planets[i].save_emap = ds_map_create();
			
			planets[i].roomid = room_duplicate(room0);
			
		}
		else{
			
		}
		planets[i].persistent = true;
		room_goto(planets[i].roomid);
	}
}
	
//}