var cx = argument0;
var cy = argument1;
chunkSize = obj_WorldManager.chunkSize;

show_debug_message("Loading: "+string(cx)+";"+string(cy));

if (false){
	
}
else{
	var arr = scr_genChunk(cx,cy);
	for (var i = 0; i < chunkSize; i++){
		for (var j = 0; j<chunkSize;j++){
			scr_placeBlockG(cx*chunkSize + i, cy*chunkSize + j, arr[i*chunkSize+j]);
		}
	}
}