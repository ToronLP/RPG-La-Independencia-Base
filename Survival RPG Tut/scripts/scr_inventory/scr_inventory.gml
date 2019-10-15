///===INVENTORY===///
// Background
invWidth = room_width;
invHeight = room_height;
padding = room_width*.05;
innerPadding = 30;
innerBoxPadding = padding+innerPadding;
draw_set_color(c_dkgray);
draw_set_alpha(.5);
draw_rectangle(0,0,invWidth,invHeight, false);
draw_set_color(c_black);
draw_set_alpha(1);
draw_roundrect_ext(padding,padding,invWidth-padding,invHeight-padding,20,20,false);
draw_set_color(c_gray);
draw_roundrect_ext(padding+innerPadding/6,padding+innerPadding/6,invWidth-padding-innerPadding/6,invHeight-padding-innerPadding/6,10,10,false);

// Text
lineHeight = 15;
draw_set_color(c_white);
draw_text(innerBoxPadding, innerBoxPadding+0*lineHeight, "Wood: "+string(inventory_wood));
draw_text(innerBoxPadding, innerBoxPadding+1*lineHeight, "Stone: "+string(inventory_stone));