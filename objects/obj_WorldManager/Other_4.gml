/// @description Insert description here
// You can write your code in this editor
if (room != rm_space){
seed = obj_planet.seed;
//#macro seed seedo
/*#macro chunkSize 4
#macro worldHeightc 64
#macro worldHeight worldHeightc*chunkSize
#macro worldWidthc 64
#macro worldWidth worldWidthc*chunkSize
#macro convrate (chunkSize*blockSize)
#macro maxShipLength 16*/

//show_debug_message(room);

//loadstep = 0;
planettype = obj_planet.type;
planetid = obj_planet.pid;

xgen = 0;
ygen = 0;

dtime = current_time;
debugtime = current_time;
//show_debug_message("I'm here");

debugChunk = false;

//#macro blockSize sprite_get_width(sp_dirt2)
maxHeight = (worldHeight * 3) div 4;

save_map = obj_planet.save_map;
save_bmap = obj_planet.save_bmap;
save_emap = obj_planet.save_emap;
//save_phmap = obj_planet.save_phmap;
//chunk_map = ds_map_create();
load_queue = ds_queue_create();
//gen_cache = ds_map_create();
block_pool = ds_queue_create();
backblock_pool = ds_queue_create();
force_pool = ds_queue_create();
chunk_pool = ds_queue_create();

//*
for (var i = 0;i<worldWidthc;i++){
	for (var j = 0; j<worldHeightc+5;j++){
		//chunkt[i,j] = -1;
		chunkobj[i,j] = 0;
	}
}
//*/
/*chunkt = ds_grid_create(worldWidthc,worldHeightc);
chunkw = ds_grid_create(worldWidthc,worldHeightc);
ds_grid_add_region(chunkw,0,0,worldWidthc-1,worldHeightc-1,0.5);
chunkwc = ds_grid_create(worldWidthc,worldHeightc);
ds_grid_copy(chunkwc,chunkw);*/

//perlin_cache = array_create(chunkSize*worldWidthc,"null");
for (var i = 0; i < chunkSize*worldWidthc;i++){
	
	perlin_cache[i,1] = "null";
	perlin_cache[i,0] = "null";
}
//show_debug_message(string(obj_messenger.shipx)+";"+ string(obj_messenger.shipy));


//var time = current_time;
/*
for (var i = 0;i<worldWidthc;i++){
	for (var j = 0;j<worldHeightc;j++){
		scr_loadChunk(i,j);
		scr_unloadChunk(i,j);
	}
}
*/
//show_debug_message("done: " + string(current_time - time)+"ms");







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
}