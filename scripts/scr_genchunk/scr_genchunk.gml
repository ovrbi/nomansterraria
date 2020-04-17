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
		
		
		//oregen
		if (j+chunkSize*cy>h2)
		for (var ore = 0; ore<obj_ogdb.num; ore++){
			var oreid = obj_ogdb.oreid[ore];
			var scarcity = obj_ogdb.scarcity[ore];
			var size = obj_ogdb.size[ore];
			var minHeight = obj_ogdb.minHeight[ore];
			var maxHeight = obj_ogdb.maxHeight[ore];
			
			var isore = 0;
			
			isore = scr_perlin2d(cx*chunkSize+i,cy*chunkSize+j,ore+1,size);
			/*for (var k = -size; k<size;k++){
				for (var l = -size; l<size; l++){
					isore += power(scr_randomSeed(((cy*chunkSize+l+i)*worldHeight + cx*chunkSize + k+j)*oreid,4),3) / (abs(k)+abs(l)+1);
					
				}
			}*/
			if (cy*chunkSize+i>maxHeight) isore = isore/ (cy*chunkSize+i-maxHeight);
			if (cy*chunkSize+i<minHeight) isore = isore/ (minHeight-cy*chunkSize+i);
			isore = isore / size*10;
			
			show_debug_message(string(obj_idb.name[oreid])+": "+string(isore));
			if (isore>scarcity) arr[i*chunkSize + j] = oreid;
		}
		
		
		
		
	}
}
//ds_map_add(obj_WorldManager.gen_cache,string(cx)+";"+string(cy),arr);
//show_debug_message(arr);




return arr;
//}