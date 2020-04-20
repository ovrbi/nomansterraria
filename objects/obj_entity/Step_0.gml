/// @description Insert description here
// You can write your code in this editor
if (active){
	if (object_index == obj_ship){
		var xx = phy_com_x;
		var yy = phy_com_y;
	}
	else{
		var xx = x;
		var yy = y;
	}
	show_debug_message("brrr");
	for (var i = -size; i <= size;i++){
		for(var j = -size; j <= size;j++){
			scr_keepChunk(d1v(i+xx,chunkSize),d1v(i+yy,chunkSize));
		}
	}
}