var arr = argument[0];
//show_debug_message(arr);
var null = 0;
if (argument_count == 2) null = argument[1];

var minx = array_height_2d(arr) + 1;
var miny = -1;
var maxx = 0;
var maxy = 0;

var arr0;

for (var xx = 0; xx < array_height_2d(arr);xx++)
{
	for (var yy = 0; yy < array_length_2d(arr,xx);yy++){
		//show_debug_message("arr " + string(arr[xx,yy]));
		//show_debug_message(string(xx)+" - "+string(yy)+ "<"+ string(array_length_2d(arr,xx)));
		if (arr[xx,yy]!=null){
			
			if (minx > xx) minx = xx;
			if (miny == -1) miny = yy;
			else if (miny > yy) miny = yy;
			if (maxx < xx) maxx = xx;
			if (maxy < yy) maxy = yy;
			
		}
	}
}
/*
show_debug_message(minx);
show_debug_message(miny);
show_debug_message(maxx);
show_debug_message(maxy);
//*/

for (xx = minx; xx <= maxx;xx++){
	for (yy = miny; yy <= maxy;yy++){
		if (yy < array_length_2d(arr,xx)) arr0[xx-minx,yy-miny] = arr[xx,yy];
		else arr0[xx-minx,yy-miny] = null;
	}
	
}

return arr0;