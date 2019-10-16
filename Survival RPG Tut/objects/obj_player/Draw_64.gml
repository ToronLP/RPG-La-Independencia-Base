if(keyboard_check_pressed(vk_tab) && inv_active == 0){
	inv_active = 1;
} else if(keyboard_check_pressed(vk_tab) && inv_active == 1){
	inv_active = 0;
}
if(inv_active == 1){
	scr_inventory();
	if(instance_exists(obj_inventory_box)){
		obj_inventory_box.image_alpha = 1;
	}
}else{
	if(instance_exists(obj_inventory_box)){
		obj_inventory_box.image_alpha = 0;
	}
}