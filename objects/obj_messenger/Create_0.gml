/// @description Insert description here
// You can write your code in this editor
#macro chunkSize 4
#macro worldHeightc 64
#macro worldHeight worldHeightc*chunkSize
#macro worldWidthc 64
#macro worldWidth worldWidthc*chunkSize
#macro convrate (chunkSize*blockSize)
#macro maxShipLength 16

#macro blockSize sprite_get_width(sp_dirt2)

shipx = 0;
shipy = 0;
camready = false;