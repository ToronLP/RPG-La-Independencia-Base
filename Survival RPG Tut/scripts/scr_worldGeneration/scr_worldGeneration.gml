// World Generation (Temp)
for(i=0; i < amount_trees; i++){
	xPos = random(room_width);
	yPos = random(room_height);
	if(place_free(xPos,yPos)){
		instance_create_layer(xPos,yPos,"Objects", obj_world_tree);
	}
}

for(i=0; i < amount_rocks; i++){
	xPos = random(room_width);
	yPos = random(room_height);
	if(place_free(xPos,yPos)){
		instance_create_layer(xPos,yPos,"Objects", obj_world_rock);
	}
}