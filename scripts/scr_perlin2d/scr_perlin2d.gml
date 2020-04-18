var ix = argument0;
var iy = argument1;
var pseed = argument2;
var size = argument3

var x0 = d1v(ix,size);
var x1 = x0 + 1;
var y0 = d1v(iy,size);
var y1 = y0 + 1;

var sx = m0d(ix,size)/size;
var sy = m0d(iy,size)/size;

var n0, n1, ix0, ix1, value;

//var deg = scr_randomSeed()
var vector = scr_randvector((worldHeight/size*y0+x0)*pseed);
n0 = (ix-x0*size)* vector[0] + (iy - y0*size)*vector[1];
vector = scr_randvector((worldHeight/size*y0+x1)*pseed);
n1 = (ix-x1*size)* vector[0] + (iy - y0*size)*vector[1];
ix0 = (1-sx) * n0 + sx * n1;

vector = scr_randvector((worldHeight/size*y1+x0)*pseed);
n0 = (ix-x0*size)* vector[0] + (iy - y1*size)*vector[1];
vector = scr_randvector((worldHeight/size*y1+x1)*pseed);
n1 = (ix-x1*size)* vector[0] + (iy - y1*size)*vector[1];
ix1 = (1-sx) * n0 + sx * n1;

value = (1-sy)*ix0 + sy*ix1; 
return value;