invWidth = room_width;
invHeight = room_height;
paddinglr = invWidth*.05;
paddingtb = invHeight*.05;
subframePaddiglr = room_width*.055;
subframePaddigtb = room_height*.055;
innerFramePadding = 20;
toInnerFramePaddinglr = subframePaddiglr+innerFramePadding;
toInnerFramePaddingtb = subframePaddigtb+innerFramePadding;
frame_width = room_width-toInnerFramePaddinglr*2;
frame_height = room_height-toInnerFramePaddingtb*2;
boxPadding = 5;
boxesPerRow = 8.5;
boxWidth = ((frame_width/2)/boxesPerRow)-boxPadding;
boxHeight = boxWidth;
sortBoxWidth = 0;//boxWidth/2;
sortBoxHeight = 0;//sortBoxWidth;
rowAmmount = ((frame_height-sortBoxHeight-boxPadding)/(boxHeight+boxPadding*2));
for(i = 0; i < rowAmmount; i++){
	for(j = 0; j < boxesPerRow-.5; j++){
		inventoryMatrixItems[i,j] = "";
		inventoryMatrixAmmount[i,j] = "";
	}
}