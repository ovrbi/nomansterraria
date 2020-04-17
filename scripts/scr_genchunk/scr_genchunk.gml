var cx = argument0;
var cy = argument1;

var arr;
/*if (ds_map_exists(obj_WorldManager.gen_cache,string(cx)+";"+string(cy))){
	return ds_map_find_value(obj_WorldManager.gen_cache,string(cx)+";"+string(cy));
}
else{*/
for (var i = 0; i < chunkSize; i++){
	var h = obj_WorldManager.maxHeight-scr_perlin(cx*chunkSize + i, obj_WorldManager.maxHeight,0);
	var h2 = obj_WorldManager.maxHeight-scr_perlin(cx*chunkSize + i, obj_WorldManager.maxHeight,1);
	for (var j = 0; j<chunkSize;j++){
		if (j+chunkSize*cy>h2) arr[i*chunkSize + j] = 2;
		else if  (j+chunkSize*cy>h) arr[i*chunkSize + j] = 1;
		else arr[i*chunkSize + j] = 0;
	}
}
//ds_map_add(obj_WorldManager.gen_cache,string(cx)+";"+string(cy),arr);
//show_debug_message(arr);
return arr;
//}