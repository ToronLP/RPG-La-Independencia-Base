///===PLAYER ACTIONS===///
//Room Restart
if(keyboard_check(vk_backspace)){
	room_restart();
}

// Movement
if(inv_active==0){
	if(keyboard_check(ord("D")) && place_free(x+global.playerMovementSpeed, y)){
		x += global.playerMovementSpeed;
		image_index = 1;
	}
	if(keyboard_check(ord("A")) && place_free(x-global.playerMovementSpeed, y)){
		x -= global.playerMovementSpeed;
		image_index = 0;
	}
	if(keyboard_check(ord("S")) && place_free(x, y+global.playerMovementSpeed)){
		y += global.playerMovementSpeed;
	}
	if(keyboard_check(ord("W")) && place_free(x, y-global.playerMovementSpeed)){
		y -= global.playerMovementSpeed;
	}
}
///PICK UP///
//Pick up Wood
nearestWood = instance_nearest(x,y,obj_item_wood);
if(keyboard_check_released(vk_space) && distance_to_object(nearestWood) < pickUpRange){
	//Destroy Log
	with(nearestWood){
		instance_destroy();
	}
	//Add Log
	scr_check_inventory_matrix(spr_log,1);
}
//Pick up Stone
nearestStone = instance_nearest(x,y,obj_item_stone);
if(keyboard_check_released(vk_space) && distance_to_object(nearestStone) < pickUpRange){
	//Destroy Stone
	with(nearestStone){
		instance_destroy();
	}
	//Add Stone
	scr_check_inventory_matrix(spr_stone,1);
}

///HARVEST///
// Hervest Trees
nearestTree = instance_nearest(x,y, obj_world_tree);
if(keyboard_check_released(vk_space) && distance_to_object(nearestTree) < harvestRange){
	amountWood = floor(random(yield_trees))+1;
	//Destroy Tree & Spawn Wood
	with(nearestTree){
		instance_destroy();
		for(i=0; i < other.amountWood+image_index; i++){
			instance_create_layer(x+i*16,y,"Objects",obj_item_wood);
		}
	}
}

// Harvest Rocks
nearestRock = instance_nearest(x,y, obj_world_rock);
if(keyboard_check_released(vk_space) && distance_to_object(nearestRock) < harvestRange){
	amountStone = floor(random(yield_rocks))+1;
	//Destroy Tree & Spawn Wood
	with(nearestRock){
		instance_destroy();
		for(i=0; i < other.amountStone; i++){
			instance_create_layer(x+i*16,y,"Objects",obj_item_stone);
		}
	}
}