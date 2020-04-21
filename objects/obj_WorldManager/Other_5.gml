/// @description Insert description here
// You can write your code in this editor
//show_debug_message("cleanup");

if (room!=rm_space){
ds_queue_destroy(load_queue);
ds_queue_destroy(block_pool);
ds_queue_destroy(backblock_pool);
ds_queue_destroy(force_pool);
ds_queue_destroy(chunk_pool);
}