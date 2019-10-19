/// @description Insert description here
// You can write your code in this editor
if(Continue == true && instance_exists(obj_player))
{
	obj_player.x = player_x;
	obj_player.y = player_y;
	Continue = false;
}