/// @description Insert description here
// You can write your code in this editor
if (active){
	//if (room == 1)
	//show_debug_message(string(x)+";"+string(y));
	
	#region thruster
	
	//show_debug_message(string(obj_player.onship)+";"+string(ship));
	
	if (obj_player.onship == ship)
	if (idee == 2||idee == 3||idee == 4){
		
		var on = false;
		
		
		if (keyboard_check(trigger)) on = true;
		
		
		
		if (idee = 4 && room != 3) on = false;
		var tdir = dir;
		var tlx = lx;
		var tly = ly;
		if (on)
		with (ship){
			//show_debug_message("aaaaaa");
			physics_apply_local_impulse(tlx,tly,-1*((tdir-1)mod 2)*50,((tdir-2)mod 2)*50);
			//physics_apply_local_impulse(tlx,tly,0,-10);
			
		}
		
	}
	#endregion
	
	#region drill
	
	if (idee == 6){
		if (keyboard_check(trigger))
		if (place_meeting(x,y,obj_block)){
			var obj2 = instance_place(x,y,obj_block);
			if (!place_meeting(x,y,obj_break))
			{
				var obj = instance_create_layer(obj2.x,obj2.y,"Break",obj_break);
				obj.maxbt = obj2.breaktime;
				obj.parent = obj2;
			}
			if (place_meeting(x,y,obj_break))
			{
				var obj = instance_place(x,y,obj_break);
				obj.bt++;
			}
		}
	}
	
	#endregion
}