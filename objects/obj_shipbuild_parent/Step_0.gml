/// @description Insert description here
// You can write your code in this editor
//base ship
if (start = 0)
{
	start = 1;
	var xx = 0;
	if (m0d(buildWidth,2) == 0) xx = 4; 

	scr_placeShipBlock(x-4 +xx,y+3 + 8*4,0,0);
	scr_placeShipBlock(x-4 +xx,y+3 + 8*5,0,0);
	scr_placeShipBlock(x-4 +xx,y+3 + 8*6,0,0);
	scr_placeShipBlock(x-4 +xx,y+3 + 8*7,0,0);

	scr_placeShipBlock(x-4 + 8*1 +xx,y+3 + 8*5,0,0);
	scr_placeShipBlock(x-4 + 8*1 +xx,y+3 + 8*6,0,0);
	scr_placeShipBlock(x-4 + 8*1 +xx,y+3 + 8*7,0,0);

	scr_placeShipBlock(x-4 - 8*1 +xx,y+3 + 8*5,0,0);
	scr_placeShipBlock(x-4 - 8*1 +xx,y+3 + 8*6,0,0);
	scr_placeShipBlock(x-4 - 8*1 +xx,y+3 + 8*7,0,0);

	scr_placeShipBlock(x-4 - 8*1 +xx,y+3 + 8*8,2,0);
	scr_placeShipBlock(x-4 +xx,y+3 + 8*8,2,0);
	scr_placeShipBlock(x-4 + 8*1 +xx,y+3 + 8*8,2,0);

	scr_placeShipBlock(x-4 + 8*2 +xx,y+3 + 8*5,2,90);
	scr_placeShipBlock(x-4 - 8*2 +xx,y+3 + 8*5,2,270);

	scr_placeShipBlock(x-4 +xx,y+3 + 8*3,2,180);
}

if (mouse_wheel_up()) select--;
else if (mouse_wheel_down()) select++;
if (select < 0) select = 7;
if (select > 7) select = 0;

if (keyboard_check_pressed(ord("Q"))) rot += 90;
else if (keyboard_check_pressed(ord("E"))) rot -= 90;