#region Controlls
if(keyboard_check_released(vk_down))
{
	if(pos < pos_max)
	{
		pos++;
	}
	else
	{
		pos = 0;	
	}
	
}

if(keyboard_check_released(vk_up))
{
	if(pos == 0)
	{
		pos = pos_max;
	}
	else
	{	
		pos--;
	}
}

#endregion

//Move arrow
obj_menu_arrow.y = start_y + (100 * pos);


switch(room)
{
	#region Main Menu
	case rm_main_menu:
		//Main Menu
		switch(pos)
		{
				case 0:
						if(keyboard_check(vk_space )||activate == 1)
						{
							room_goto(rm_main);	
						}
			
				break;
		
				case 1:
						if(keyboard_check(vk_space )||activate == 1)
						{
							room_goto(rm_options);	
						}
				break;	
		
				case 2:
						if(keyboard_check(vk_space )|| activate == 1)
						{
							game_end();
						}
				break;
		
		}
	break;
	#endregion
	#region Ingame Menu
	case rm_menu_ingame:
		switch(pos)
		{
				case 0:
						if(keyboard_check(vk_space )||activate == 1)
						{
							
							room_goto(rm_main);	
						}
			
				break;
		
				case 1:
						if(keyboard_check(vk_space )||activate == 1)
						{
							room_goto(rm_options);	
						}
				break;	
		
				case 2:
						if(keyboard_check(vk_space )|| activate == 1)
						{
							room_goto(rm_main_menu);
							obj_data_trader.Continue = false;
						}
				break;
		}
	break;
	#endregion
}
activate = 0;

