/// @description Insert description here
// You can write your code in this editor



#region moves the tiles
if(move == true)
{
	//checks if it should be reseted or deployed
	if(my_destination == obj_dropdown_controller.first_id.y)
	{
		reset = true;	
	}
		
	//moves to Destination
	if(reset == false)
	{
		if(y + vsp < my_destination ) vspeed = vsp;
		else
		{
			if(y < my_destination) vspeed = 1;
			else vspeed = 0;
		}
	}
	else
	{
		if(y - vsp > my_destination ) vspeed = vsp * (-1);
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




