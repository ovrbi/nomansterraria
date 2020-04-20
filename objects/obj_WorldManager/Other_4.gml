/// @description Insert description here
// You can write your code in this editor
if (room != rm_space){
seed = obj_planet.seed;
planettype = obj_planet.type;
planetid = obj_planet.pid;


//show_debug_message("I'm here");

debugChunk = false;

//#macro blockSize sprite_get_width(sp_dirt2)
maxHeight = (worldHeight * 3) div 4;

save_map = obj_planet.save_map;
save_bmap = obj_planet.save_bmap;
save_emap = obj_planet.save_emap;
//chunk_map = ds_map_create();
load_queue = ds_queue_create();
//gen_cache = ds_map_create();
block_pool = ds_queue_create();
backblock_pool = ds_queue_create();
force_pool = ds_queue_create();



//perlin_cache = array_create(chunkSize*worldWidthc,"null");
for (var i = 0; i < chunkSize*worldWidthc;i++){
	perlin_cache[i,1] = "null";
	perlin_cache[i,0] = "null";
}

stx = d1v(obj_player.x, convrate);
enx = d1v(obj_player.x, convrate);
sty = d1v(obj_player.y, convrate);
eny = d1v(obj_player.y, convrate);

var time = current_time;
/*
for (var i = 0;i<worldWidthc;i++){
	for (var j = 0;j<worldHeightc;j++){
		scr_loadChunk(i,j);
		scr_unloadChunk(i,j);
	}
}
*/
//show_debug_message("done: " + string(current_time - time)+"ms");

scr_loadChunk(stx,sty);
}