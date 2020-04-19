/// @description crafting database

num = 0;

cum[0] = 0;

#region Workbench
//Workbench
tool[num] = 0;
ingredientid[num,0] = 8;
ingredientcount[num,0] = 20;
ingredientid[num,1] = 0;
ingredientcount[num,1] = 0;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 20;
productcount[num] = 1;
num++;

//Furnace
tool[num] = 0;
ingredientid[num,0] = 2;
ingredientcount[num,0] = 15;
ingredientid[num,1] = 6;
ingredientcount[num,1] = 5;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 21;
productcount[num] = 1;
num++;

//Ship Component Constructor
tool[num] = 0;
ingredientid[num,0] = 8;
ingredientcount[num,0] = 40;
ingredientid[num,1] = 17;
ingredientcount[num,1] = 5;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 22;
productcount[num] = 1;
num++;

//Enhancer
tool[num] = 0;
ingredientid[num,0] = 17;
ingredientcount[num,0] = 40;
ingredientid[num,1] = 8;
ingredientcount[num,1] = 25;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 23;
productcount[num] = 1;
num++;

//Combat Machine
tool[num] = 0;
ingredientid[num,0] = 8;
ingredientcount[num,0] = 35
ingredientid[num,1] = 11;
ingredientcount[num,1] = 15;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 24;
productcount[num] = 1;
num++;
#endregion

cum[1] = num;

#region Furnace
//Iron
tool[num] = 1;
ingredientid[num,0] = 7;
ingredientcount[num,0] = 1;
ingredientid[num,1] = 6;
ingredientcount[num,1] = 1;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 8;
productcount[num] = 1;
num++;

//Copper
tool[num] = 1;
ingredientid[num,0] = 16;
ingredientcount[num,0] = 1;
ingredientid[num,1] = 6;
ingredientcount[num,1] = 1;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 17;
productcount[num] = 1;
num++;

//Titanium
tool[num] = 1;
ingredientid[num,0] = 18;
ingredientcount[num,0] = 1;
ingredientid[num,1] = 6;
ingredientcount[num,1] = 1;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 19;
productcount[num] = 1;
num++;

#endregion

cum[2] = num;

#region Ship Component Constructor

//Structure Block
tool[num] = 2;
ingredientid[num,0] = 8;
ingredientcount[num,0] = 10;
ingredientid[num,1] = 0;
ingredientcount[num,1] = 0;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 0;
productcount[num] = 1;
num++;

//Reinforced Block
tool[num] = 2;
ingredientid[num,0] = 8;
ingredientcount[num,0] = 10;
ingredientid[num,1] = 19;
ingredientcount[num,1] = 30;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 1;
productcount[num] = 1;
num++;

//Thruster

tool[num] = 2;
ingredientid[num,0] = 8;
ingredientcount[num,0] = 15;
ingredientid[num,1] = 11;
ingredientcount[num,1] = 25;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 2;
productcount[num] = 1;
num++;

//Reinforced Thruster

tool[num] = 2;
ingredientid[num,0] = 19;
ingredientcount[num,0] = 30;
ingredientid[num,1] = 11;
ingredientcount[num,1] = 25;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 3;
productcount[num] = 1;
num++;

//Lightspeed Thurster

tool[num] = 2;
ingredientid[num,0] = 8;
ingredientcount[num,0] = 25;
ingredientid[num,1] = 13;
ingredientcount[num,1] = 75;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 4;
productcount[num] = 1;
num++;

//Stabilizer

tool[num] = 2;
ingredientid[num,0] = 8;
ingredientcount[num,0] = 15;
ingredientid[num,1] = 11;
ingredientcount[num,1] = 15;
ingredientid[num,2] = 17;
ingredientcount[num,2] = 25;
productid[num] = 5;
productcount[num] = 1;
num++;

//Drill
tool[num] = 2;
ingredientid[num,0] = 8;
ingredientcount[num,0] = 25;
ingredientid[num,1] = 11;
ingredientcount[num,1] = 50;
ingredientid[num,2] = 17;
ingredientcount[num,2] = 15;
productid[num] = 6;
productcount[num] = 1;
num++;

#endregion

cum[3] = num;

#region Enhancer

//Speed Chip Mk. I
tool[num] = 3;
ingredientid[num,0] = 17;
ingredientcount[num,0] = 10;
ingredientid[num,1] = 11;
ingredientcount[num,1] = 10;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 25;
productcount[num] = 1;
num++;

//Speed Chip Mk. II
tool[num] = 3;
ingredientid[num,0] = 17;
ingredientcount[num,0] = 25;
ingredientid[num,1] = 11;
ingredientcount[num,1] = 25;
ingredientid[num,2] = 19;
ingredientcount[num,2] = 10;
productid[num] = 26;
productcount[num] = 1;
num++;

//Size Chip Mk. I
tool[num] = 3;
ingredientid[num,0] = 17;
ingredientcount[num,0] = 25;
ingredientid[num,1] = 13;
ingredientcount[num,1] = 25;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 27;
productcount[num] = 1;
num++;

//Extraction Chip Mk. I
tool[num] = 3;
ingredientid[num,0] = 17;
ingredientcount[num,0] = 50;
ingredientid[num,1] = 15;
ingredientcount[num,1] = 25;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 28;
productcount[num] = 1;
num++;

//Range Chip Mk. I
tool[num] = 3;
ingredientid[num,0] = 17;
ingredientcount[num,0] = 15;
ingredientid[num,1] = 13;
ingredientcount[num,1] = 10;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 29;
productcount[num] = 1;
num++;

//Jump Module
tool[num] = 3;
ingredientid[num,0] = 17;
ingredientcount[num,0] = 25;
ingredientid[num,1] = 11;
ingredientcount[num,1] = 15;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 30;
productcount[num] = 1;
num++;

//Speed Module
tool[num] = 3;
ingredientid[num,0] = 17;
ingredientcount[num,0] = 25;
ingredientid[num,1] = 13;
ingredientcount[num,1] = 25;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 31;
productcount[num] = 1;
num++;

//Regen Module
tool[num] = 3;
ingredientid[num,0] = 17;
ingredientcount[num,0] = 50;
ingredientid[num,1] = 15;
ingredientcount[num,1] = 75;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 32;
productcount[num] = 1;
num++;

#endregion
cum[4] = num;
#region Combat Machine

//Iron Helmet
tool[num] = 4;
ingredientid[num,0] = 8;
ingredientcount[num,0] = 25;
ingredientid[num,1] = 0;
ingredientcount[num,1] = 0;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 33;
productcount[num] = 1;
num++;
//Iron Chestplate
tool[num] = 4;
ingredientid[num,0] = 8;
ingredientcount[num,0] = 50;
ingredientid[num,1] = 0;
ingredientcount[num,1] = 0;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 34;
productcount[num] = 1;
num++;
//Iron Legwear
tool[num] = 4;
ingredientid[num,0] = 8;
ingredientcount[num,0] = 35;
ingredientid[num,1] = 0;
ingredientcount[num,1] = 0;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 35;
productcount[num] = 1;
num++;

//Titanium Helmet
tool[num] = 4;
ingredientid[num,0] = 19;
ingredientcount[num,0] = 25;
ingredientid[num,1] = 0;
ingredientcount[num,1] = 0;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 36;
productcount[num] = 1;
num++;
//Titanium Chestplate
tool[num] = 4;
ingredientid[num,0] = 19;
ingredientcount[num,0] = 50;
ingredientid[num,1] = 0;
ingredientcount[num,1] = 0;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 37;
productcount[num] = 1;
num++;
//Titanium Legwear
tool[num] = 4;
ingredientid[num,0] = 19;
ingredientcount[num,0] = 35;
ingredientid[num,1] = 0;
ingredientcount[num,1] = 0;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 38;
productcount[num] = 1;
num++;

//Lilium Helmet
tool[num] = 4;
ingredientid[num,0] = 15;
ingredientcount[num,0] = 25;
ingredientid[num,1] = 0;
ingredientcount[num,1] = 0;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 39;
productcount[num] = 1;
num++;
//Lilium Chestplate
tool[num] = 4;
ingredientid[num,0] = 15;
ingredientcount[num,0] = 50;
ingredientid[num,1] = 0;
ingredientcount[num,1] = 0;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 40;
productcount[num] = 1;
num++;
//Lilium Legwear
tool[num] = 4;
ingredientid[num,0] = 15;
ingredientcount[num,0] = 35;
ingredientid[num,1] = 0;
ingredientcount[num,1] = 0;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 41;
productcount[num] = 1;
num++;



//Pistol
tool[num] = 4;
ingredientid[num,0] = 8;
ingredientcount[num,0] = 15;
ingredientid[num,1] = 11;
ingredientcount[num,1] = 15;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 42;
productcount[num] = 1;
num++;

//Rocket Launcher
tool[num] = 4;
ingredientid[num,0] = 8;
ingredientcount[num,0] = 25;
ingredientid[num,1] = 11;
ingredientcount[num,1] = 75;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 43;
productcount[num] = 1;
num++;

//Laser Pistol
tool[num] = 4;
ingredientid[num,0] = 8;
ingredientcount[num,0] = 15;
ingredientid[num,1] = 13;
ingredientcount[num,1] = 25;
ingredientid[num,2] = 17;
ingredientcount[num,2] = 10;
productid[num] = 44;
productcount[num] = 1;
num++;

//Hardlight Rifle
tool[num] = 4;
ingredientid[num,0] = 8;
ingredientcount[num,0] = 25;
ingredientid[num,1] = 13;
ingredientcount[num,1] = 75;
ingredientid[num,2] = 17;
ingredientcount[num,2] = 25;
productid[num] = 45;
productcount[num] = 1;
num++;

//Lilium Wand
tool[num] = 4;
ingredientid[num,0] = 19;
ingredientcount[num,0] = 25;
ingredientid[num,1] = 15;
ingredientcount[num,1] = 25;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 46;
productcount[num] = 1;
num++;

//Lilium Staff
tool[num] = 4;
ingredientid[num,0] = 19;
ingredientcount[num,0] = 50;
ingredientid[num,1] = 15;
ingredientcount[num,1] = 99;
ingredientid[num,2] = 0;
ingredientcount[num,2] = 0;
productid[num] = 47;
productcount[num] = 1;
num++;

#endregion
cum[5] = num;