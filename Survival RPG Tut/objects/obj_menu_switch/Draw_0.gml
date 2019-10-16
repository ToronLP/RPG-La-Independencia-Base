/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

switch(my_id)
{
	case 0:
		if(room = rm_options) image_index = 1;
	break;
	
	case 1:
		if(room = rm_sound) image_index = 1;
	break;
	
	case 2:
		if(room = rm_controls) image_index = 1;
	break;

}

switch(my_id)
{
	case 0:
		draw_text(x,y,"Graphics")
	break;
	
	case 1:
		draw_text(x,y,"Sound")
	break;
	
	case 2:
		draw_text(x,y,"Controls")
	break;
}
