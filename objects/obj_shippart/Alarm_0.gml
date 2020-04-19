/// @description calculate relativity to ship (LEGACY)

angle = image_angle - ship.image_angle;

var sx = ship.x;
var sy = ship.y;
//show_debug_message(string(sx)+";"+string(sy)+";"+string(x)+";"+string(y));
distance = sqrt(sqr(sx-x) + sqr(sy-y));
dangle = arctan((sx-x)/(sy-y)) + ship.image_angle;

show_debug_message(distance);

active = true;