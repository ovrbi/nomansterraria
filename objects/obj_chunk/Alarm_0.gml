/// @description Insert description here
// You can write your code in this editor
scr_unloadChunk(x,y);
ds_queue_enqueue(obj_WorldManager.chunk_pool,id);
obj_WorldManager.chunkobj[m0d(x,worldWidthc),y] = 0;

//show_debug_message(string(x)+";"+string(y)+" oof "+string(ds_queue_size(obj_WorldManager.chunk_pool)));
alarm[0] = -1;