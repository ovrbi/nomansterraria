var cx = argument0;
var cy = argument1;
var priority = argument2;
var tx = m0d(cx,worldWidthc);
var chunk_pool = obj_WorldManager.chunk_pool;
if (cy >=0 && cy <worldHeightc+3){
//show_debug_message("WRONG WRONG")
//show_debug_message(string(cx)+";"+string(cy)+";"+string(tx));


var chunk = obj_WorldManager.chunkobj[tx,cy];
//if (cy>=23)
//show_debug_message(chunk);
if (chunk == 0){
	if (ds_queue_empty(chunk_pool)) var chunko = instance_create_layer(cx,cy,"Instances",obj_chunk);
	else{
		var chunko = ds_queue_dequeue(chunk_pool);
		chunko.x = cx;
		chunko.y = cy;
		//show_debug_message(chunko);
	}
	obj_WorldManager.chunkobj[tx,cy] = chunko;
	//show_debug_message(":"+string(obj_WorldManager.chunkobj[tx,cy]));
	scr_loadChunk(cx,cy);
	//show_debug_message(string(cx)+";"+string(cy)+";"+string(tx));
	chunko.alarm[0]= 50;
}
else{
	if (priority&&chunk.x != cx){
		scr_unloadChunk(chunk.x,cy);
		scr_loadChunk(cx,cy);
		chunk.x=cx;
		//show_debug_message(string(cx)+";"+string(cy)+";"+string(tx));
	}
	chunk.alarm[0] = 50;
}
/*
if (obj_WorldManager.chunkobj[tx,cy] == -1){
	//ds_queue_enqueue(obj_WorldManager.load_queue,[cx,cy]);
	scr_loadChunk(cx,cy);
	obj_WorldManager.chunkt[tx,cy] = 50;
	obj_WorldManager.chunkw[tx,cy] = cx;
	
}
else if (obj_WorldManager.chunkw[tx,cy]!=cx){
	if (priority){
	scr_unloadChunk(obj_WorldManager.chunkw[tx,cy],cy);
	scr_loadChunk(cx,cy);
	obj_WorldManager.chunkt[tx,cy] = 50;
	obj_WorldManager.chunkw[tx,cy] = cx;
	show_debug_message("Override");
	}
}
else {
	obj_WorldManager.chunkt[tx,cy] = 50;
	obj_WorldManager.chunkw[tx,cy] = cx;
}*/


}