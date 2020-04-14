/// @description Insert description here
// You can write your code in this editor
seed = irandom_range(10000000,100000000);
worldHeight = 256;
worldWidth = 512;

var blockSize = sprite_get_width(sp_dirt2);
var maxHeight = (worldHeight * 3) div 4;
 

for (var i=0; i<worldWidth; i++)
{
	var h = scr_perlin(i,maxHeight);
	for (var j = 0;j<h;j++)
	{
		var xx = blockSize/2 + i * blockSize;
		var yy = blockSize/2 + room_height - blockSize - (j*blockSize);
		scr_placeBlock(xx,yy,1);
	}
}