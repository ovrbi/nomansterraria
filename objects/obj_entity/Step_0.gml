/// @description Insert description here
// You can write your code in this editor
//show_debug_message("adewkfava");
if (active){
	if (object_index == obj_ship){
		var xx = phy_com_x;
		var yy = phy_com_y;
	}
	else{
		var xx = x;
		var yy = y;
	}
	
	for (var i = -size; i <= size;i++){
		for(var j = -size; j <= size;j++){
			//show_debug_message(string(d1v(i+xx,convrate))+";"+string(d1v(i+yy,convrate)));
			scr_keepChunk(d1v(xx,convrate)+i,d1v(yy,convrate)+j,false);
		}
	}
}