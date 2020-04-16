var cx = argument0;
var cy = argument1;
var tx = m0d(cx,worldWidth);


//Debug
//show_debug_message("Loading: "+string(tx)+";"+string(cy));
//draw_rectangle(cx*chunkSize*blockSize, cy*chunkSize*blockSize, (cx+1)*chunkSize*blockSize, (cy+1)*chunkSize*blockSize, true);

//End of debug
var arr0; 
arr0[chunkSize*chunkSize-1] = 0;
//if (ds_map_exists(obj_WorldManager.chunk_map,string(tx)+";"+string(cy))){
//	instance_activate_region(cx*convrate, cy*convrate, convrate-1,convrate-1,true);
//}
//else{
//ds_map_add(chunk_map,string(cx)+";"+string(cy), arr0);

if (ds_map_exists(obj_WorldManager.save_map, string(tx)+";"+string(cy))){
	var arr = ds_map_find_value(obj_WorldManager.save_map,string(tx)+";"+string(cy));
}
else{
	var arr = scr_genChunk(tx,cy);
}

for (var i = 0; i < chunkSize; i++){
		for (var j = 0; j<chunkSize;j++){
			if (array_length_1d(arr)>i*chunkSize+j)
			scr_placeBlockG(cx*chunkSize + i, cy*chunkSize + j, arr[i*chunkSize+j]);
		}
	}
//}

if (ds_map_exists(obj_WorldManager.save_emap, string(tx)+";"+string(cy))){
	var stak = ds_map_find_value(obj_WorldManager.save_emap, string(tx)+";"+string(cy));
	while (ds_stack_size(stak)>0){
		var entity = ds_stack_pop(stak);
		instance_activate_object(entity);
		entity.x = cx * convrate + entity.lx;
		entity.y = cy * convrate + entity.ly;
		//show_debug_message("Loaded "+string(entity.x)+";"+string(entity.y));
	}
	ds_stack_destroy(ds_map_find_value(obj_WorldManager.save_emap, string(tx)+";"+string(cy)));
}