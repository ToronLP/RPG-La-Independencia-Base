///===INVENTORY===///
// Background
invWidth = room_width;
invHeight = room_height;
paddinglr = room_width*.05;
paddingtb = room_height*.05;
subframePaddiglr = room_width*.055;
subframePaddigtb = room_height*.055;
innerFramePadding = 20;
toInnerFramePaddinglr = subframePaddiglr+innerFramePadding;
toInnerFramePaddingtb = subframePaddigtb+innerFramePadding;

draw_set_color(c_dkgray);
draw_set_alpha(.5);
draw_rectangle(0,0,invWidth,invHeight, false);
draw_set_color(c_black);
draw_set_alpha(1);
draw_roundrect_ext(paddinglr,paddingtb,invWidth-paddinglr,invHeight-paddingtb,20,20,false);
draw_set_color(c_gray);
draw_roundrect_ext(subframePaddiglr,subframePaddigtb,invWidth-subframePaddiglr,invHeight-subframePaddigtb,10,10,false);

// Text
/*lineHeight = sprite_get_width(spr_log)*4+20;
draw_set_color(c_white);
draw_sprite_ext(spr_log,0,innerBoxPadding, innerBoxPadding+0*lineHeight,4,4,0,c_white,1);
draw_sprite_ext(spr_stone,0,innerBoxPadding, innerBoxPadding+1*lineHeight,4,4,0,c_white,1);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text_transformed(innerBoxPadding+sprite_get_width(spr_log)*4-5, innerBoxPadding+0*lineHeight+sprite_get_width(spr_log)*4-5, string(inventory_wood),2,2,0);
draw_text_transformed(innerBoxPadding+sprite_get_width(spr_log)*4-5, innerBoxPadding+1*lineHeight+sprite_get_width(spr_log)*4-5, string(inventory_stone),2,2,0);
*/
//The Inventory Grid
frame_width = invWidth-toInnerFramePaddinglr*2;
frame_height = invHeight-toInnerFramePaddingtb*2;
boxPadding = 5;
boxesPerRow = 8.5;
boxWidth = ((frame_width/2)/boxesPerRow)-boxPadding;
boxHeight = boxWidth;
rowAmmount = (frame_height/(boxHeight+boxPadding*2));
for(i = 0; i < rowAmmount; i++){
	for(j = 0; j < boxesPerRow-.5; j++){
		draw_sprite_stretched(spr_inventory_box,0,	
								room_width/2+boxWidth*j+boxPadding*j,
								toInnerFramePaddingtb+boxHeight*i+boxPadding*i,
								boxWidth,boxHeight);
		if(inventoryMatrixItems[i,j]!=""){
			draw_sprite_stretched(inventoryMatrixItems[i,j],0,
								room_width/2+boxWidth*j+boxPadding*j+boxWidth*.1,
								toInnerFramePaddingtb+boxHeight*i+boxPadding*i+boxHeight*.1,
								boxWidth-(boxWidth*.1)*2,boxHeight-(boxHeight*.1)*2);
			draw_set_color(c_black);
			draw_text_transformed(room_width/2+boxWidth*j+boxPadding*j+5,
								toInnerFramePaddingtb+boxHeight*i+boxPadding*i,
								string(inventoryMatrixAmmount[i,j]),1,1,0);
		}
	}
}
/*draw_set_color(c_black);
for(i = 0; i < rowAmmount; i++){
	for(j = 0; j < boxesPerRow-.5; j++){
		inventoryItem = global.inventoryMatrixItems[i,j];
		inventoryAmmount = global.inventoryMatrixAmmount[i,j];
		draw_text(toInnerFramePaddinglr+100*j,toInnerFramePaddingtb+50*i,"Item: "+string(inventoryItem)+",\nAmmount: "+string(inventoryAmmount));
	}
}*/