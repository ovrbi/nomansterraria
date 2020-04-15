/// @description Insert description here
// You can write your code in this editor
seed = irandom_range(10000000,100000000);
worldHeight = 256;
worldWidth = 16; //in chunks
chunkSize = 16;

blockSize = sprite_get_width(sp_dirt2);
maxHeight = (worldHeight * 3) div 4;

save_map = ds_map_create();

stx = obj_player.x div blockSize div chunkSize;
enx = obj_player.x div blockSize div chunkSize;
sty = obj_player.y div blockSize div chunkSize;
eny = obj_player.y div blockSize div chunkSize;
scr_loadChunk(stx,sty);


 

/*for (var i=0; i<worldWidth; i++)
{
	var h = scr_perlin(i,maxHeight);
	for (var j = 0;j<h;j++)
	{
		
		scr_placeBlockG(i,worldHeight - j,1);
	}
}*/