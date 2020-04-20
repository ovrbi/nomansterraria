//argument0 = id
//argument1 drop?
var block = argument0;
var xx = block.x;
var yy = block.y;


//var block = instance_place(argument0,argument1,obj_block);
if (argument1){
var drop = instance_create_layer(xx,yy,"Entities",obj_drop);
	
drop.sprite_index = obj_idb.sprite[obj_idb.drop[block.idee]];
drop.idee = obj_idb.drop[block.idee];

}

//var arr = ds_map_find_value(obj_WorldManager.chunk_map, string(d1v(xx,convrate))+";"+string(d1v(yy,convrate)),);
//arr[chunkSize*m0d(d1v(xx,blockSize),chunkSize)+m0d(d1v(yy,blockSize),chunkSize)] = 0;
//ds_map_replace(obj_WorldManager.chunk_map, string(d1v(xx,convrate))+";"+string(d1v(yy,convrate)),arr);

//if (ds_stack_size(obj_WorldManager.block_pool)<1024){
//show_debug_message(block.);


if (block.object_index == obj_block) ds_queue_enqueue( obj_WorldManager.block_pool,block);
else if (block.object_index == obj_backblock) {
	
	ds_queue_enqueue( obj_WorldManager.backblock_pool,block);
	}
block.y=-10000;
block.visible= false;

	//instance_deactivate_object(block);
//}
//else instance_destroy(argument0);