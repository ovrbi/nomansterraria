/// @description Insert description here
// You can write your code in this editor
//Temp to check save data size

show_debug_message(ds_map_size(save_map));
for (var i = 0;i<worldWidthc;i++){
	for (var j = 0;j<worldHeightc;j++){
		scr_loadChunk(i,j);
		//scr_unloadChunk(i,j);
	}
}