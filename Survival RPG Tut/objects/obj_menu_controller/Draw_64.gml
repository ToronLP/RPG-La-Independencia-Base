/// @description must me placed in every menu
//Place Holder

//Text alignment
draw_set_halign(fa_center);
draw_set_valign(fa_center);

//menu Text
if(room = rm_main_menu)
{

	draw_text(room_width /2, start_y, "New Game" );
	draw_text(room_width /2, start_y + 100  , "Options" );
	draw_text(room_width /2, start_y + 200 , "Exit" );

}
