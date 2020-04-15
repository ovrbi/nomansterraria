//argument0 = x
//argument1 = y
//argument2 = id

if (obj_idb.sprite[argument2] != -1) && (obj_idb.bt[argument2] != -1) 
{
	var block = instance_create_layer(argument0,argument1,"Instances",obj_block);
	block.sprite_index = obj_idb.sprite[argument2];
	block.breaktime = obj_idb.bt[argument2];
	block.idee = argument2;
}