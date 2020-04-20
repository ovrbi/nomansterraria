/// @description Ore Generation database

num = 0;

//coal
oreid[num] = 5;
scarcity[num] =1;
size[num] = 16;
minHeight[num] = 0;
maxHeight[num] = worldHeight/2;
type[num,1] = true;
type[num,2] = true;
type[num,3] = false;
num++;

//iron
oreid[num] = 7;
scarcity[num] = 1;
size[num] = 8;
minHeight[num] = 0;
maxHeight[num] = worldHeight/2;
type[num,1] = true;
type[num,2] = true;
type[num,3] = true;
num++;

//titanium

oreid[num] = 18;
scarcity[num] = 0.5;
size[num] = 4;
minHeight[num] = worldHeight/2;
maxHeight[num] = worldHeight;
type[num,1] = false;
type[num,2] = true;
type[num,3] = true;
num++;


//copper
oreid[num] = 16;
scarcity[num] = 0.5;
size[num] = 4;
minHeight[num] = worldHeight/2;
maxHeight[num] = worldHeight;
type[num,1] = true;
type[num,2] = false;
type[num,3] = true;
num++;

//luxus

oreid[num] = 12;
scarcity[num] = 0.3;
size[num] = 4;
minHeight[num] = worldHeight/4*3;
maxHeight[num] = worldHeight;
type[num,1] = false;
type[num,2] = true;
type[num,3] = false;
num++;


//infernum
oreid[num] = 10;
scarcity[num] = 0.3;
size[num] = 4;
minHeight[num] = worldHeight/4*3;
maxHeight[num] = worldHeight;
type[num,1] = true;
type[num,2] = false;
type[num,3] = false;
num++;

//lilium

oreid[num] = 14;
scarcity[num] = 0.3;
size[num] = 4;
minHeight[num] = worldHeight/4*3;
maxHeight[num] = worldHeight;
type[num,1] = false;
type[num,2] = false;
type[num,3] = true;
num++;
