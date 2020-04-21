/// @description Insert description here
// You can write your code in this editor
/*
var xx = obj_player.x;
var yy = obj_player.y;
var begx = d1v((xx - camera_get_view_width(view_camera[0])), convrate);
var endx = d1v((xx + camera_get_view_width(view_camera[0])), convrate);
var begy = d1v((yy - camera_get_view_height(view_camera[0])), convrate);
var endy = d1v((yy + camera_get_view_height(view_camera[0])), convrate);

ds_grid_set_region(chunkt,m0d(begx,worldWidthc),begy,m0d(endx,worldWidthc),endy,50);
for (var i = begx;i<=endx;i++){
	ds_grid_set_region(chunkw,m0d(i,worldWidthc),begy,m0d(i,worldWidthc),endy,i);
}

for (var i = 0; i<worldWidthc;i++){
	for (var j = 0;j<worldHeightc;j++){
		var ct = ds_grid_get(chunkt,i,j);
		if (ct == 0){
			//scr_unloadChunk(w2,j);
			ds_grid_set(chunkw,i,j,0.5);
			
		}
		var w1 = ds_grid_get(chunkw,i,j);
		var w2 = ds_grid_get(chunkwc,i,j);
		
		
		if (ct<=0) ds_grid_set(chunkt,i,j,-1);
		
		if (w1!=w2){
			if (w2 != 0.5)  scr_unloadChunk(w2,j);
			if (w1 != 0.5)  scr_loadChunk(w1,j);
		}
	}
	
}
ds_grid_copy(chunkwc,chunkw);
*/