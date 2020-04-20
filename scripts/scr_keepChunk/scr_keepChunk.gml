var cx = argument0;
var cy = argument1;
var tx = m0d(cx,worldWidthc);
if (cy >=0 && cy <worldHeightc+3){

//show_debug_message(string(cx)+";"+string(cy)+";"+string(tx));
if (obj_WorldManager.chunkt[tx,cy] == -1){
	//ds_queue_enqueue(obj_WorldManager.load_queue,[cx,cy]);
	scr_loadChunk(cx,cy);
}
else if (obj_WorldManager.chunkw[tx,cy]!=cx){
	scr_unloadChunk(obj_WorldManager.chunkw[tx,cy],cy);
	scr_loadChunk(cx,cy);
}

obj_WorldManager.chunkt[tx,cy] = 50;
obj_WorldManager.chunkw[tx,cy] = cx;
}