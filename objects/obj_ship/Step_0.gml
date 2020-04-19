/// @description Insert description here
// You can write your code in this editor


if (room!=rm_space){
	
	//show_debug_message(phy_mass);
if (y < 0){
	persistent = true;
	for (var i = 0; i < width;i++){
		for (var j = 0; j<height;j++){
			shipmatrix[i,j].persistent = true;
		}
	}
	
	obj_messenger.escapex = m0d(x,blockSize*worldWidth);
	obj_messenger.planetfrom = obj_WorldManager.planetid;
		
	room_goto(rm_space);
}




var _list = ds_list_create();
var _num = collision_circle_list(phy_com_x, phy_com_y, radius*2, obj_block, false, false, _list, false);

if _num > 0
    {
    for (var i = 0; i < _num; ++i)
        {
			
			var object = _list[| i];
			if !(position_meeting(object.x+1,object.y+1,obj_force))
			if !(position_meeting(object.x+blockSize,object.y,obj_block)&&position_meeting(object.x-blockSize,object.y,obj_block)&&position_meeting(object.x,object.y+blockSize,obj_block)&&position_meeting(object.x,object.y-blockSize,obj_block))
			{
				var forcefield;
				//show_debug_message("aaaaa");
				if (ds_queue_empty(obj_WorldManager.force_pool)){
					forcefield = instance_create_layer(d1v(object.x,blockSize)*blockSize,d1v(object.y,blockSize)*blockSize,"Break",obj_force);
					//show_debug_message("new");
				}
				else {
					forcefield = ds_queue_dequeue(obj_WorldManager.force_pool);
				}
				forcefield.phy_position_x = d1v(object.x,blockSize)*blockSize;
				forcefield.phy_position_y = d1v(object.y,blockSize)*blockSize;
				//forcefield.phy_active = true;
				forcefield.enabled = 100;
				forcefield.ship = id;
				//instance_activate_object(forcefield);
			}
        }
	
}
ds_list_destroy(_list);
}