/// @description Insert description here
// You can write your code in this editor

//Text alignment

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

#region		draws Text until instance of corresponding button gets destroyed
if(instance_exists(dropdown_ids[5])) 
{
	draw_text(room_width / 2,  dropdown_ids[5].y , Resolutions16by9[5]);
		
		
	if(dropdown_ids[5].reset == 0)
	{
		for(i = 0; i < 5; i++)
		{
			if(instance_exists(dropdown_ids[i]) && dropdown_ids[i].my_destination == dropdown_ids[i].y )
			{
					draw_text(room_width / 2,  dropdown_ids[i].y , Resolutions16by9[i]);	
			}
		}
	}
	else
	{
		for(i = 0; i < 5; i++)
		{
			if(instance_exists(dropdown_ids[i]))
			{
				draw_text(room_width / 2,  dropdown_ids[i].y , Resolutions16by9[i]);	
			}
		}
	}
}
#endregion


//Draws Resolution besides the button
draw_text(first_id.x - first_id.sprite_width, first_id.y ,"Resolution:")
	
		
	

