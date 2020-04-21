var obj = argument0;
var arr;
arr[0] = obj.object_index;
//show_debug_message(string(obj.object_index));
//show_debug_message(obj_drop.object_index);
switch(obj.object_index){
	case obj_drop:
	arr[1] = m0d(obj.x,convrate);
	arr[2] = m0d(obj.y,convrate);
	arr[3] = obj.idee;
	break;
	case obj_ship:
	arr[1] = m0d(obj.x,convrate);
	arr[2] = m0d(obj.y,convrate);
	arr[3] = obj.phy_rotation;
	arr[4] = obj.com_x;
	arr[5] = obj.com_y;
	arr[6] = obj.shipblueprint;
	break;
}

return arr;