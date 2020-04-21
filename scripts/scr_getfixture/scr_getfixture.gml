var fixture = argument0;
var part = argument1;

var offsetx = argument2;
var offsety = argument3;

var dir = part.dir;

physics_fixture_set_polygon_shape(fixture);

for (var i = 0;i<obj_sdb.fixcount[part.idee];i++){
	var xx = obj_sdb.fixturepx[part.idee,i];
	var yy = obj_sdb.fixturepy[part.idee,i];
	var tx = xx;
	
	//*
	
	for (var j = 0; j<dir;j++){
		tx = xx;
		xx = yy;
		yy = blockSize - tx;
		
		//if (part.idee == 6) show_debug_message(j);
	}
	//*/
	//show_debug_message(string(offsetx*blockSize + xx)+";"+string(offsety*blockSize + yy));
	physics_fixture_add_point(fixture, offsetx + xx, offsety + yy);
}
/*physics_fixture_add_point(fixture, offsetx*blockSize, offsety*blockSize);
physics_fixture_add_point(fixture, (offsetx+1)*blockSize, offsety*blockSize);
physics_fixture_add_point(fixture, (offsetx+1)*blockSize, (offsety+1)*blockSize);
physics_fixture_add_point(fixture, offsetx*blockSize, (offsety+1)*blockSize);
*/