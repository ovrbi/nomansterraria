/// @description Insert description here
// You can write your code in this editor
seed = irandom_range(10000000,100000000);
//#macro seed seedo
#macro chunkSize 4
#macro worldHeightc 64
#macro worldHeight worldHeightc*chunkSize
#macro worldWidthc 64
#macro worldWidth worldWidthc*chunkSize
#macro convrate (chunkSize*blockSize)

//loadstep = 0;

debugChunk = false;

#macro blockSize sprite_get_width(sp_dirt2)
maxHeight = (worldHeight * 3) div 4;

save_map = ds_map_create();
save_emap = ds_map_create();
//chunk_map = ds_map_create();
//load_queue = ds_queue_create();
//gen_cache = ds_map_create();
block_pool = ds_queue_create();



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
show_debug_message("done: " + string(current_time - time)+"ms");

scr_loadChunk(stx,sty);





//aro[9] = 0;
//show_debug_message("Output: "+string(aro[7]));

/*for (var i = 20;i>-20;i--){
	show_debug_message(string(d1v(i,3))+"/"+string(m0d(i,3)));
}*/
 

/*for (var i=0; i<worldWidthc; i++)
{
	var h = scr_perlin(i,maxHeight);
	for (var j = 0;j<h;j++)
	{
		
		scr_placeBlockG(i,worldHeight - j,1);
	}
}*/