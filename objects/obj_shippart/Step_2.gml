/// @description update location
if(active){
image_angle = angle + ship.image_angle;
//show_debug_message(angle);
x = ship.x + lengthdir_x(distance,angle+ship.image_angle+radtodeg(dangle)+90);
y = ship.y + lengthdir_y(distance,angle+ship.image_angle+radtodeg(dangle)+90);
}