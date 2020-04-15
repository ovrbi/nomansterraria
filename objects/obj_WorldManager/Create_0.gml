/// @description Insert description here
// You can write your code in this editor
seed = irandom_range(10000000,100000000);
worldHeight = 256;
worldWidth = 16; //in chunks
chunkSize = 16;

blockSize = sprite_get_width(sp_dirt2);
maxHeight = (worldHeight * 3) div 4;

save_map = ds_map_create();

stx = d1v(d1v(obj_player.x, blockSize), chunkSize);
enx = d1v(d1v(obj_player.x, blockSize), chunkSize);
sty = d1v(d1v(obj_player.y, blockSize), chunkSize);
eny = d1v(d1v(obj_player.y, blockSize), chunkSize);
scr_loadChunk(stx,sty);

/*for (var i = 20;i>-20;i--){
	show_debug_message(string(d1v(i,3))+"/"+string(m0d(i,3)));
}*/
 

/*for (var i=0; i<worldWidth; i++)
{
	var h = scr_perlin(i,maxHeight);
	for (var j = 0;j<h;j++)
	{
		
		scr_placeBlockG(i,worldHeight - j,1);
	}
}*/