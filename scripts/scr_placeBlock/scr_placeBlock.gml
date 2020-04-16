//argument0 = x
//argument1 = y
//argument2 = id

if (argument2>0){
	if (obj_idb.sprite[argument2] != -1) && (obj_idb.bt[argument2] != -1) 
	{
		var block;
		if (ds_queue_size(obj_WorldManager.block_pool)>0){
			block = ds_queue_dequeue(obj_WorldManager.block_pool);
			//instance_activate_object(block);
			block.x=argument0;
			block.y=argument1;
		}
		else{
			block = instance_create_layer(argument0,argument1,"Instances",obj_block);
		}
		block.sprite_index = obj_idb.sprite[argument2];
		block.breaktime = obj_idb.bt[argument2];
		block.idee = argument2;
		//block.parent = ds_map_find_value(obj_WorldManager.chunk_map,string(d1v(argument0,obj_WorldManager.chunkSize*obj_WorldManager.blockSize))+";"+string(d1v(argument1,obj_WorldManager.chunkSize*obj_WorldManager.blockSize)))
		//var arr = ds_map_find_value(obj_WorldManager.chunk_map, string(d1v(argument0,convrate))+";"+string(d1v(argument1,convrate)),);
		//arr[chunkSize*m0d(d1v(block.x,blockSize),chunkSize)+m0d(d1v(block.y,blockSize),chunkSize)] = block;
		//ds_map_replace(obj_WorldManager.chunk_map, string(d1v(argument0,convrate))+";"+string(d1v(argument1,convrate)),arr);
	}
}