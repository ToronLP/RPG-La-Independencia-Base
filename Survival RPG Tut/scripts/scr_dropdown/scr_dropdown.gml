
if(click == 1 && droped == 0)
{
	first_id.image_index = 1;
	droped = 1;
	for(i = 0; i < 6; i++)
	{
		destination[i] = obj_dropdown_0.y + obj_dropdown_0.sprite_height * (i + 1)
		instance_create_depth(room_width / 2, obj_dropdown_0.y  ,0, obj_dropdown_0);
		
		
	}
	click = 0;
	
}

if(click == 1 && droped == 1)
{
	first_id.image_index = 0;
	
	for(i = 0; i < 6; i++)
	{
		dropdown_ids[i].my_destination = first_id.y;
	}
	click = 0;
	droped = 0;
}


