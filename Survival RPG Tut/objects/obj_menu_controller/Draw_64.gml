/// @description must me placed in every menu
//Place Holder

//Text alignment
draw_set_halign(fa_center);
draw_set_valign(fa_center);

//menu Text

switch(room)
{
	#region Main Menu
	case rm_main_menu:
		draw_text(room_width /2, start_y , "New Game" );
		draw_text(room_width /2, start_y + abstand  , "Options" );
		draw_text(room_width /2, start_y + abstand*2, "Exit" );
	break;
	#endregion
	#region Ingame menu
	case rm_menu_ingame:
		draw_text(room_width /2, start_y , "Continue" );
		draw_text(room_width /2, start_y + abstand , "Options" );
		draw_text(room_width /2, start_y + abstand*2 , "Main Menu" );
	break;
	#endregion
}

