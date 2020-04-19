/// @description Insert description here
// You can write your code in this editor
if (active){
	//if (room == 1)
	//show_debug_message(string(x)+";"+string(y));
	
	#region thruster
	if (idee == 2||idee == 3||idee == 4){
		var on = false;
		switch (dir){
		case 0:
		if (keyboard_check(ord("D"))) on = true;
		break;
		case 1:
		if (keyboard_check(ord("W"))) on = true;
		break;
		case 2:
		if (keyboard_check(ord("A"))) on = true;
		break;
		case 3:
		if (keyboard_check(ord("S"))) on = true;
		break;
		
		}
		
		
		
		if (idee = 4 && room != 3) on = false;
		var tdir = dir;
		var tlx = lx;
		var tly = ly;
		if (on)
		with (ship){
			show_debug_message("aaaaaa");
			physics_apply_local_impulse(tlx,tly,((tdir-1)mod 2)/10,((tdir-2)mod 2)/10);
			//physics_apply_local_impulse(tlx,tly,0,-10);
			
		}
		
	}
	#endregion
}