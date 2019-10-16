///===INVENTORY===///
// Background
invWidth = room_width;
invHeight = room_height;
padding = room_width*.05;
subframePaddig = room_width*.055;
innerFramePadding = 20;
toInnerFramePadding = subframePaddig+innerFramePadding;
draw_set_color(c_dkgray);
draw_set_alpha(.5);
draw_rectangle(0,0,invWidth,invHeight, false);
draw_set_color(c_black);
draw_set_alpha(1);
draw_roundrect_ext(padding,padding,invWidth-padding,invHeight-padding,20,20,false);
draw_set_color(c_gray);
draw_roundrect_ext(subframePaddig,subframePaddig,invWidth-subframePaddig,invHeight-subframePaddig,10,10,false);

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
frame_width = invWidth-toInnerFramePadding*2;
frame_height = invHeight-toInnerFramePadding*2;
boxPadding = 2.5;
boxesPerRow = 8;
boxWidth = (frame_width/2)/boxesPerRow;
boxHeight = boxWidth;
rowAmmount = frame_height / boxHeight;
for(i = 0; i < rowAmmount; i++){
	for(j = 0; j < boxesPerRow; j++){
		draw_sprite(spr_inventory_box,0,room_width/2-boxWidth/2+boxWidth*j+boxPadding,toInnerFramePadding+boxHeight*i);
		/*this = instance_create_layer((boxWidth+boxPadding)*i,(boxHeight+boxPadding)*j,"Inventory",obj_inventory_box);
		with(this){
			box_id = string(other.i)+string(other.j);
		}*/
	}
}