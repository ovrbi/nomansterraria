var cx = argument0;
var cy = argument1;
chunkSize = obj_WorldManager.chunkSize;
var tx = (cx%obj_WorldManager.worldWidth) + obj_WorldManager.worldWidth;
tx = tx %obj_WorldManager.worldWidth;
//show_debug_message("Loading: "+string(cx)+";"+string(cy));

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