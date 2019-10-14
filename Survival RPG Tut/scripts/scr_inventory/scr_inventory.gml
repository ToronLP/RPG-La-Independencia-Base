///===INVENTORY===///
/// Background
invWidth = 96;
invHeight = 50;
draw_set_color(c_white);
draw_rectangle(0,0,invWidth,invHeight, false);
draw_set_color(c_black);
draw_rectangle(0,0,invWidth,invHeight,true);

// Text
lineHeight = 15;
draw_set_color(c_black);
draw_text(2, 0*lineHeight, "Wood: "+string(inventory_wood));
draw_text(2, 1*lineHeight, "Stone: "+string(inventory_stone));