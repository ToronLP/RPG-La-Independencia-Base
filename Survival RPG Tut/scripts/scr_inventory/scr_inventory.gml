///===INVENTORY===///
// Background
draw_set_color(c_dkgray);
draw_set_alpha(.5);
draw_rectangle(0,0,invWidth,invHeight, false);
draw_set_color(c_black);
draw_set_alpha(1);
draw_roundrect_ext(paddinglr,paddingtb,invWidth-paddinglr,invHeight-paddingtb,20,20,false);
draw_set_color(c_gray);
draw_roundrect_ext(subframePaddiglr,subframePaddigtb,invWidth-subframePaddiglr,invHeight-subframePaddigtb,10,10,false);

// Draw Sort Function Box
draw_sprite_stretched(spr_inventory_box,0,room_width/2,toInnerFramePaddingtb,sortBoxWidth,sortBoxHeight);
// Draw the Inventory Grid and the Items
for(i = 0; i < rowAmmount; i++){
	for(j = 0; j < boxesPerRow-.5; j++){
		draw_sprite_stretched(spr_inventory_box,0,	
								room_width/2+boxWidth*j+boxPadding*j,
								toInnerFramePaddingtb+boxHeight*i+boxPadding*i+sortBoxHeight+boxPadding,
								boxWidth,boxHeight);
		if(inventoryMatrixItems[i,j]!=""){
			draw_sprite_stretched(inventoryMatrixItems[i,j],0,
								room_width/2+boxWidth*j+boxPadding*j+boxWidth*.1,
								toInnerFramePaddingtb+boxHeight*i+boxPadding*i+boxHeight*.1+sortBoxHeight+boxPadding,
								boxWidth-(boxWidth*.1)*2,boxHeight-(boxHeight*.1)*2);
			draw_set_color(c_black);
			draw_text_transformed(room_width/2+boxWidth*j+boxPadding*j+5,
								toInnerFramePaddingtb+boxHeight*i+boxPadding*i+sortBoxHeight+boxPadding,
								string(inventoryMatrixAmmount[i,j]),1,1,0);
		}
	}
}