/// @description Insert description here
// You can write your code in this editor

if(move = 1)
{
	if(reset = 0)
	{
		if(y + 5 < my_destination ) vspeed = 5;
		else
		{
			if(y < my_destination) vspeed = 1;
			else vspeed = 0;
		}
	
		if(my_destination == obj_dropdown_controller.first_id.y)
		{
			reset = 1;	
		}
	}
	else
	{
		if(y - 5 > my_destination ) vspeed = -5;
		else
		{
			if(y > my_destination) vspeed = -1;
			else 
			{
				vspeed = 0;
				instance_destroy();
			}
		}
	}
	
	
	
}



