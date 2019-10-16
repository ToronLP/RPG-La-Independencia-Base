/// @description Insert description here
// You can write your code in this editor



#region moves the tiles
if(move = true)
{
	if(reset = false)
	{
		if(y + 5 < my_destination ) vspeed = 5;
		else
		{
			if(y < my_destination) vspeed = 1;
			else vspeed = 0;
		}
	
		if(my_destination == obj_dropdown_controller.first_id.y)
		{
			reset = true;	
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
#endregion



