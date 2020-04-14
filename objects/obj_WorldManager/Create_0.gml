/// @description Insert description here
// You can write your code in this editor
seed = irandom_range(10000000,100000000);
worldHeight = 256;
worldWidth = 512;
chunkSize = 16;

blockSize = sprite_get_width(sp_dirt2);
var maxHeight = (worldHeight * 3) div 4;

stx = obj_player.x div blockSize;
enx = obj_player.x div blockSize;
sty = obj_player.y div blockSize;
eny = obj_player.y div blockSize;
 

for (var i=0; i<worldWidth; i++)
{
	var h = scr_perlin(i,maxHeight);
	for (var j = 0;j<h;j++)
	{
		var xx = blockSize/2 + i * blockSize;
		var yy = blockSize/2 + room_height - blockSize - (j*blockSize);
		scr_placeBlockG(i,worldHeight - j,1);
	}
}