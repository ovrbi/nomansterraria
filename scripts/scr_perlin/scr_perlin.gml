var xx = argument0;
var range = argument1 div 2;

var noise = 0;

var chunkSize = 16;

while (chunkSize > 0){

var chunkIndex = xx div chunkSize;
var prog = (xx % chunkSize)/chunkSize;
 
 var left_random = scr_randomSeed(chunkIndex, range);
 var right_random = scr_randomSeed(chunkIndex+1,range);
 
 noise += (1-prog)*left_random+prog*right_random;
 chunkSize = chunkSize div 2;
 range = range div 2;
}
 return noise;