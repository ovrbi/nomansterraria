/// @description Insert description here
// You can write your code in this editor

size = 0; //blocks to the right
size0 = 0; //blocks to the left
buildWidth = 0; //horizontal size

rot = 0;

for (i = 0; i < 10; i++)
{
	slot_id[i] = -1;
}
slot_id[0] = -2;
slot_id[1] = 0;
slot_id[2] = 2;
slot_id[3] = 6;

select = 0;


//base ship
scr_placeShipBlock(x-4,y+2 + 8*4,0,0);
scr_placeShipBlock(x-4,y+2 + 8*5,0,0);
scr_placeShipBlock(x-4,y+2 + 8*6,0,0);
scr_placeShipBlock(x-4,y+2 + 8*7,0,0);

scr_placeShipBlock(x-4 + 8*1,y+2 + 8*5,0,0);
scr_placeShipBlock(x-4 + 8*1,y+2 + 8*6,0,0);
scr_placeShipBlock(x-4 + 8*1,y+2 + 8*7,0,0);

scr_placeShipBlock(x-4 - 8*1,y+2 + 8*5,0,0);
scr_placeShipBlock(x-4 - 8*1,y+2 + 8*6,0,0);
scr_placeShipBlock(x-4 - 8*1,y+2 + 8*7,0,0);

scr_placeShipBlock(x-4 - 8*1,y+2 + 8*8,2,0);
scr_placeShipBlock(x-4,y+2 + 8*8,2,0);
scr_placeShipBlock(x-4 + 8*1,y+2 + 8*8,2,0);

scr_placeShipBlock(x-4 + 8*2,y+2 + 8*6,2,90);
scr_placeShipBlock(x-4 - 8*2,y+2 + 8*6,2,270);

scr_placeShipBlock(x-4,y+2 + 8*3,2,180);









