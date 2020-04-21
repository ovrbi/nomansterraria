/// @description Insert description here
// You can write your code in this editor
//show_debug_message("bbbb");
if(instance_exists(ship)){

if (enabled > 0)
if (!place_meeting(x,y,obj_block)||distance_to_object(ship)>ship.radius*4){
ds_queue_enqueue(obj_WorldManager.force_pool,id);
	//show_debug_message(string(place_meeting(x,y,obj_block))+"aaaa"+string(distance_to_object(ship)>ship.radius*4));
	enabled --;
}
}
else {
	ds_queue_enqueue(obj_WorldManager.force_pool,id);
	enabled = 0;
}
if (enabled <= 0){
	
	phy_position_y = -10000;
	enabled = 0;
	//instance_deactivate_object(id);
	
}
