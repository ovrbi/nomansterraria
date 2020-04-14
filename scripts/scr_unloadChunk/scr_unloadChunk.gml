var cx = argument0;
var cy = argument1;
chunkSize = obj_WorldManager.chunkSize;
blockSize = obj_WorldManager.blockSize;

show_debug_message("Unloading: "+string(cx)+";"+string(cy));

var _list = ds_list_create();
var _num = collision_rectangle_list(cx*chunkSize*blockSize, cy*chunkSize*blockSize, (cx+1)*chunkSize*blockSize-1, (cy+1)*chunkSize*blockSize-1,obj_block ,false, false, _list, false);
if _num > 0
    {
    for (var i = 0; i < _num; ++i;)
        {
			//save it here
			instance_destroy(_list[| i]);
        }
    }
ds_list_destroy(_list)