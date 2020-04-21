/// @description Insert description here
// You can write your code in this editor
//show_debug_message(string(phy_position_x)+";"+string(phy_position_y));
for (var xx = 0; xx<width;xx++){
	for (var yy = 0; yy < height;yy++){
		//show_debug_message(string(xx)+";"+string(yy));
		var part = shipmatrix[xx,yy];
		if (part != 0) instance_destroy(part);

	}
}