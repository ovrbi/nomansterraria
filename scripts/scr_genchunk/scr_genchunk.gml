var cx = argument0;
var cy = argument1;
chunkSize = obj_WorldManager.chunkSize;
var arr;

for (var i = 0; i < chunkSize; i++){
	var h = obj_WorldManager.maxHeight-scr_perlin(cx*chunkSize + i, obj_WorldManager.maxHeight);
	for (var j = 0; j<chunkSize;j++){
		if  (j+chunkSize*cy>h) arr[i*chunkSize + j] = 1;
		else arr[i*chunkSize + j] = 0;
	}
}

return arr;