//argument0 = x
//argument1 = y
//argument2 = id

if (argument2>0)
{
	if (obj_idb.sprite[argument2] != -1) && (obj_idb.bt[argument2] != -1) 
	{
		var block;
		//show_debug_message(ds_queue_size(obj_WorldManager.backblock_pool));
		if (ds_queue_size(obj_WorldManager.backblock_pool)>0)
		{
			block = ds_queue_dequeue(obj_WorldManager.backblock_pool);
			//instance_activate_object(block);
			block.x=argument0;
			block.y=argument1;
		}
		else
		{
			block = instance_create_layer(argument0,argument1,"Back_Instances",obj_backblock);
		}
		block.sprite_index = obj_idb.sprite[argument2];
		block.breaktime = obj_idb.bt[argument2];
		block.idee = argument2;
	}
}