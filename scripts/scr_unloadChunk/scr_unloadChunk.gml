var cx = argument0;
var cy = argument1;
chunkSize = obj_WorldManager.chunkSize;
blockSize = obj_WorldManager.blockSize;
var tx = (cx%obj_WorldManager.worldWidth) + obj_WorldManager.worldWidth;
tx = tx %obj_WorldManager.worldWidth;

//show_debug_message("Unloading: "+string(cx)+";"+string(cy));

var _list = ds_list_create();
var _num = collision_rectangle_list(cx*chunkSize*blockSize, cy*chunkSize*blockSize, (cx+1)*chunkSize*blockSize-1, (cy+1)*chunkSize*blockSize-1,obj_block ,false, false, _list, false);
if _num > 0
    {
		var array;
		array[chunkSize*chunkSize - 1] = 0;
    for (var i = 0; i < _num; ++i)
        {
			var object = _list[| i];
			//show_debug_message(string(object.x)+";"+string(object.y)+":"+string(((object.x div blockSize % chunkSize)+chunkSize%chunkSize)*chunkSize+((object.y div blockSize % chunkSize)+chunkSize%chunkSize)));
			array[m0d(d1v(object.x,blockSize),chunkSize)*chunkSize+m0d(d1v(object.y,blockSize),chunkSize)] = object.index;
			//save it here
			instance_destroy(object);
        }
		//show_debug_message("-----------------------------------");
		//show_debug_message(array);
		//show_debug_message(scr_genChunk(tx,cy));
		if (!array_equals(array,scr_genChunk(tx,cy))) ds_map_replace(obj_WorldManager.save_map,string(tx)+";"+string(cy), array);
		//else show_debug_message("Degenerate scum");
    }
ds_list_destroy(_list)

