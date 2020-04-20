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
	break;
}
return arr;