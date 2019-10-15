/// @description Insert description here
// You can write your code in this editor

for(i = 0; i <= obj_menu_arrow.pos_max; i++)
{
	button_id = i;
	instance_create_depth(obj_menu_arrow.x + 175, obj_menu_arrow.y + i * 100 ,0,obj_button);	
}