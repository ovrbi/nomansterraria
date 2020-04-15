var xx = argument0;
var range = argument1 div 8;
//show_debug_message(xx);
worldWidth = obj_WorldManager.worldWidth;
chunkSize = obj_WorldManager.chunkSize;
xx = xx%(worldWidth*chunkSize);

var noise = argument1 div 2;

var chunkLength = 32;
//xx+=10000000000000000;

while (chunkLength > 0)
{
	var chunkIndex = xx div chunkLength;
	var chunkIndex1 = ((xx+chunkLength)%(worldWidth*chunkSize)) div chunkLength;
	var prog = (xx % chunkLength)/chunkLength;
 
	//show_debug_message(chunkIndex%worldWidth);
	var left_random = scr_randomSeed(chunkIndex, range);
	var right_random = scr_randomSeed(chunkIndex+1,range);
 
	noise += (1-prog)*left_random+prog*right_random;
	chunkLength = chunkLength div 2;
	range = range / 1.75;
}
return noise;