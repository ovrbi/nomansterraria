var arr = argument0
var cx = argument1;
var cy = argument2;
var obj = arr[0];
//show_debug_message(arr);
//show_debug_message("beep"+string(arr[1]+cx*convrate)+";"+string(arr[2]+cy*convrate));

switch (obj){
	case obj_drop:
	
	var drop = instance_create_layer(arr[1]+cx*convrate,arr[2]+cy*convrate,"Instances",obj_drop);
	drop.sprite_index = obj_idb.sprite[arr[3]];
	drop.idee = arr[3];
	
	break;
	case obj_ship:
	break;
}