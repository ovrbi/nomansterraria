/// @description Insert description here
// You can write your code in this editor


if (room == 1){
	
	//show_debug_message(phy_mass);
	
var _list = ds_list_create();
var _num = collision_circle_list(phy_com_x, phy_com_y, radius, obj_block, false, false, _list, false);

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
				}
				else {
					forcefield = ds_queue_dequeue(obj_WorldManager.force_pool);
				}
				forcefield.phy_position_x = d1v(object.x,blockSize)*blockSize;
				forcefield.phy_position_y = d1v(object.y,blockSize)*blockSize;
				forcefield.phy_active = true;
				forcefield.ship = id;
				instance_activate_object(forcefield);
			}
        }
	
}
ds_list_destroy(_list);
}