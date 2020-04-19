/// @description update location
if(active){
image_angle = angle + ship.image_angle;
x = ship.x + lengthdir_x(distance,angle+dangle);
y = ship.y + lengthdir_y(distance,angle+dangle);
}