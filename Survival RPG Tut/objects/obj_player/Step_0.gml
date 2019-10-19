/// @description Insert description here
// You can write your code in this editor

scr_adjustDepth();
scr_playerActions();

if(keyboard_check_released(vk_escape))
{
	obj_data_trader.player_x = x;
	obj_data_trader.player_y = y;
	room_goto(rm_menu_ingame);
	obj_data_trader.Continue = true;
	
}