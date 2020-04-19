/// @description ship block database
var num = 0;

//0 = Structure block
name[num] = "Structure Block";
desc[num] = "The foundation of/nany ship.";
sprite[num] = sp_structure_block;
mass[num] = 10;
hp[num] = 10;

#region fixture
fixcount[num] = 4;
fixturepx[num,0] = 0;
fixturepy[num,0] = 0;
fixturepx[num,1] = blockSize;
fixturepy[num,1] = 0;
fixturepx[num,2] = blockSize;
fixturepy[num,2] = blockSize;
fixturepx[num,3] = 0;
fixturepy[num,3] = blockSize;
#endregion

num++;



//1 = Reinforced Block
name[num] = "Reinforced Block";
desc[num] = "The foundation of/na strong ship";
sprite[num] = sp_reinforced_block;
mass[num] = 15;
hp[num] = 25;

#region fixture
fixcount[num] = 4;
fixturepx[num,0] = 0;
fixturepy[num,0] = 0;
fixturepx[num,1] = blockSize;
fixturepy[num,1] = 0;
fixturepx[num,2] = blockSize;
fixturepy[num,2] = blockSize;
fixturepx[num,3] = 0;
fixturepy[num,3] = blockSize;
#endregion

num++;



//2 = Thruster
name[num] = "Thruster";
desc[num] = "Applies force in/na direction";
sprite[num] = sp_thruster;
mass[num] = 5;
hp[num] = 5;

#region fixture
fixcount[num] = 4;
fixturepx[num,0] = 0;
fixturepy[num,0] = 0;
fixturepx[num,1] = blockSize;
fixturepy[num,1] = 0;
fixturepx[num,2] = blockSize;
fixturepy[num,2] = blockSize;
fixturepx[num,3] = 0;
fixturepy[num,3] = blockSize;
#endregion

num++;

//3 = Reinforced Thruster
name[num] = "Reinforced Thruster";
desc[num] = "Extra safety measures.";
sprite[num] = sp_reinforced_thruster;
mass[num] = 10;
hp[num] = 15;

#region fixture
fixcount[num] = 4;
fixturepx[num,0] = 0;
fixturepy[num,0] = 0;
fixturepx[num,1] = blockSize;
fixturepy[num,1] = 0;
fixturepx[num,2] = blockSize;
fixturepy[num,2] = blockSize;
fixturepx[num,3] = 0;
fixturepy[num,3] = blockSize;
#endregion

num++;

//4 = Lightspeed Thruster
name[num] = "Lightspeed Thruster";
desc[num] = "Faster, but only/n works in no gravity.";
sprite[num] = sp_lightspeed_thruster;
mass[num] = 10;
hp[num] = 5;

#region fixture
fixcount[num] = 4;
fixturepx[num,0] = 0;
fixturepy[num,0] = 0;
fixturepx[num,1] = blockSize;
fixturepy[num,1] = 0;
fixturepx[num,2] = blockSize;
fixturepy[num,2] = blockSize;
fixturepx[num,3] = 0;
fixturepy[num,3] = blockSize;
#endregion

num++;

//5 = Stabilizer (maybe)
name[num] = "Stabilizer";
desc[num] = "Tries to keep the ship upright./nOnly works in gravity./nPress space to toggle.";
sprite[num] = sp_stabilizer;
mass[num] = 5;
hp[num] = 5;

#region fixture
fixcount[num] = 4;
fixturepx[num,0] = 0;
fixturepy[num,0] = 0;
fixturepx[num,1] = blockSize;
fixturepy[num,1] = 0;
fixturepx[num,2] = blockSize;
fixturepy[num,2] = blockSize;
fixturepx[num,3] = 0;
fixturepy[num,3] = blockSize;
#endregion

num++;

//6 = Drill
name[num] = "Reinforced Block";
desc[num] = "Ore machine goes/nbrrrrrrrr";
sprite[num] = sp_drill;
mass[num] = 2.5;
hp[num] = 5;

#region fixture
fixcount[num] = 4;
fixturepx[num,0] = blockSize/4*3;
fixturepy[num,0] = 0;
fixturepx[num,1] = blockSize;
fixturepy[num,1] = 0;
fixturepx[num,2] = blockSize;
fixturepy[num,2] = blockSize;
fixturepx[num,3] = blockSize/4*3;
fixturepy[num,3] = blockSize;
#endregion

num++;
