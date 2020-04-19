/// @description calculate relativity to ship

angle = image_angle - ship.image_angle;

var sx = ship.x;
var sy = ship.y;

distance = sqrt(sqr(sx-x) + sqr(sy-y));
dangle = arctan((sx-x)/(sy-y)) + ship.image_angle;