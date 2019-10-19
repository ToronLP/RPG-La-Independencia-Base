/// @description Insert description here
// You can write your code in this editor
#region Variablen
activate = 0;
pos = 0;
start_y = y;
abstand = 100;
#endregion

#region Menu options count
switch(room)
{
	case rm_main_menu : 
		pos_max = 2;
	break;
	
	case rm_menu_ingame:
		pos_max = 2;
	break;
}
#endregion

#region Button Generator
for(i = 0; i <= pos_max; i++)
{
	button_id = i;
	instance_create_depth(room_width /2, start_y + i * 100 ,0,obj_button)	
}
#endregion