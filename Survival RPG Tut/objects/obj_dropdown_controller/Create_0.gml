/// @description Insert description here
// You can write your code in this editor
click = false;
droped = 0;

Resolutions16by9[0] = "1280x720";
Resolutions16by9[1] = "1600x900";
Resolutions16by9[2] = "1920x1080";
Resolutions16by9[3] = "2560x1440";
Resolutions16by9[4] = "3200x1800";
Resolutions16by9[5] = "3800x2160";


for(i = 0; i < 6; i++)
	{
		destination[i] = 0;
	}


instance_create_depth(room_width / 2, room_height / 4,-1,obj_dropdown_0)
instance_create_depth(obj_dropdown_0.x + obj_dropdown_0.sprite_width / 2 + sprite_get_width(spr_dropdown)  , room_height / 4,0,obj_dropdown_1)

first_id = obj_dropdown_0.id;




for(i = 0; i < 6; i++)
{
	dropdown_ids[i] = 0;
}
