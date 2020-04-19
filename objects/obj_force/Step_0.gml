/// @description Insert description here
// You can write your code in this editor
if (!place_meeting(x,y,obj_block)||distance_to_object(ship)>ship.radius*2){
ds_queue_enqueue(obj_WorldManager.force_pool,id);
	instance_deactivate_object(id);
}