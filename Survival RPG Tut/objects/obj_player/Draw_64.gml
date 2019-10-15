if(keyboard_check_pressed(vk_tab) && inv_active == 0){
	inv_active = 1;
} else if(keyboard_check_pressed(vk_tab) && inv_active == 1){
	inv_active = 0;
}
if(inv_active == 1){
	scr_inventory();
}