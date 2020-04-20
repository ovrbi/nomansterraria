/// @description Insert description here
// You can write your code in this editor


if (room!=rm_space)
{	
	//show_debug_message(obj_WorldManager.planetid);
	//show_debug_message(phy_mass);
	if (y < 0&&!retire)
	{
		//show_debug_message("Size: " + string(width)+";"+string(height));
		persistent = true;
		for (var i = 0; i < width;i++)
		{
			for (var j = 0; j<height;j++)
			{
				//show_debug_message(string(i)+";"+string(j));
				shipmatrix[i,j].persistent = true;
			}
		}
	
		obj_messenger.escapex = m0d(x,blockSize*worldWidth);
		obj_messenger.planetfrom = obj_WorldManager.planetid;
		
		ds_queue_destroy(obj_WorldManager.load_queue);
		ds_queue_destroy(obj_WorldManager.block_pool);
		ds_queue_destroy(obj_WorldManager.backblock_pool);
		ds_queue_destroy(obj_WorldManager.force_pool);
		retire = true;
		room_goto(rm_space);
}
if (y>0) retire = false;

//TEMPORARY

if (keyboard_check_pressed(ord("Q"))&&obj_player.onship == id) {
		stabactive = !stabactive;
		
	}
	
	if (stabactive && room != rm_space) {
		//show_debug_message((targetangle - phy_rotation)*100);
		physics_apply_torque(clamp(0 - phy_rotation,-1,1)*phy_mass*20);
	}

//SHIT


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
				forcefield.enabled = 10;
				forcefield.ship = id;
				//instance_activate_object(forcefield);
			}
        }
	
}
ds_list_destroy(_list);

if (room != rm_space){
	if (y > worldHeight*blockSize-8 + blockSize*3) y = worldHeight*blockSize-8 + blockSize*3;
}
}