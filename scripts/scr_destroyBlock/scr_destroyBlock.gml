//argument0 = x
//argument1 = y

if (place_meeting(x,y,obj_block))
{
	var block = instance_place(argument0,argument1,obj_block);
	var drop = instance_create_layer(argument0,argument1,"Instances",obj_drop);
	
	drop.sprite_index = obj_idb.sprite[obj_idb.drop[block.idee]];
	drop.idee = obj_idb.drop[block.idee];
	
	instance_destroy(block);
}