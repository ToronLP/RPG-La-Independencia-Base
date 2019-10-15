/// @description Insert description here
// You can write your code in this editor
activate = 0;
pos = 0;
start_y = y;

//Menu options count
switch(room)
{
	case rm_main_menu : 
		pos_max = 2;
	break;
}

//Button Generator
for(i = 0; i <= pos_max; i++)
{
	button_id = i;
	instance_create_depth(room_width /2, start_y + i * 100 ,0,obj_button)	
}