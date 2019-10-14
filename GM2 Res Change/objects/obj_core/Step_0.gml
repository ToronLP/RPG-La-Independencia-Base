/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 14027008
/// @DnDArgument : "code" "/// @description Camera Zoom$(13_10)camX = camera_get_view_x(view_camera[0]);$(13_10)camY = camera_get_view_y(view_camera[0]);$(13_10)$(13_10)if(mouse_wheel_down()) {$(13_10)	if(camWidth < 960){$(13_10)		camWidth += 32;$(13_10)		camHeight += 18;$(13_10)		camera_set_view_size(view_camera[0], camWidth, camHeight);$(13_10)		camera_set_view_border(view_camera[0], camWidth, camHeight);$(13_10)		//Corrections$(13_10)		if(x != camX+camWidth/2 || y != camY+camHeight/2){$(13_10)			x = camX+camWidth/2;$(13_10)			y = camY+camHeight/2;$(13_10)		}$(13_10)	}$(13_10)}else if(mouse_wheel_up()){$(13_10)	if(camWidth>320){$(13_10)		camWidth -= 32;$(13_10)		camHeight -= 18$(13_10)		camera_set_view_size(view_camera[0], camWidth, camHeight);$(13_10)		camera_set_view_border(view_camera[0], camWidth, camHeight);$(13_10)	}$(13_10)}"
/// @description Camera Zoom
camX = camera_get_view_x(view_camera[0]);
camY = camera_get_view_y(view_camera[0]);

if(mouse_wheel_down()) {
	if(camWidth < 960){
		camWidth += 32;
		camHeight += 18;
		camera_set_view_size(view_camera[0], camWidth, camHeight);
		camera_set_view_border(view_camera[0], camWidth, camHeight);
		//Corrections
		if(x != camX+camWidth/2 || y != camY+camHeight/2){
			x = camX+camWidth/2;
			y = camY+camHeight/2;
		}
	}
}else if(mouse_wheel_up()){
	if(camWidth>320){
		camWidth -= 32;
		camHeight -= 18
		camera_set_view_size(view_camera[0], camWidth, camHeight);
		camera_set_view_border(view_camera[0], camWidth, camHeight);
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7FDB88F8
/// @DnDArgument : "code" "/// @description Window Size$(13_10)// Fullscreen$(13_10)$(13_10)if(keyboard_check(vk_alt) && keyboard_check_pressed(vk_enter)){$(13_10)	if(window_get_fullscreen()){$(13_10)		window_set_fullscreen(false);$(13_10)	} else {$(13_10)		window_set_fullscreen(true);$(13_10)	}$(13_10)}$(13_10)// Change Resolutions (360p, 720p, 1080p)$(13_10)if(keyboard_check_released(vk_up)){$(13_10)	switch(windowHeight){$(13_10)		case 360:$(13_10)			windowWidth = 1280;$(13_10)			windowHeight = 720;$(13_10)			break;$(13_10)			$(13_10)		case 720:$(13_10)			windowWidth = 1920;$(13_10)			windowHeight = 1080;$(13_10)			break;$(13_10)			$(13_10)		case 1080:$(13_10)			windowWidth = 640;$(13_10)			windowHeight = 360;$(13_10)			break;$(13_10)	}$(13_10)	window_set_size(windowWidth, windowHeight);$(13_10)	window_set_position(monitorWidth/2 - windowWidth/2, monitorHeight/2 - windowHeight/2);$(13_10)}"
/// @description Window Size
// Fullscreen

if(keyboard_check(vk_alt) && keyboard_check_pressed(vk_enter)){
	if(window_get_fullscreen()){
		window_set_fullscreen(false);
	} else {
		window_set_fullscreen(true);
	}
}
// Change Resolutions (360p, 720p, 1080p)
if(keyboard_check_released(vk_up)){
	switch(windowHeight){
		case 360:
			windowWidth = 1280;
			windowHeight = 720;
			break;
			
		case 720:
			windowWidth = 1920;
			windowHeight = 1080;
			break;
			
		case 1080:
			windowWidth = 640;
			windowHeight = 360;
			break;
	}
	window_set_size(windowWidth, windowHeight);
	window_set_position(monitorWidth/2 - windowWidth/2, monitorHeight/2 - windowHeight/2);
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7E15949B
/// @DnDArgument : "code" "/// @description Camera Pan$(13_10)if(keyboard_check(ord("D")) and x < room_width-camWidth/2){$(13_10)	x += camSpeed;$(13_10)}$(13_10)if(keyboard_check(ord("A"))and x > camWidth/2){$(13_10)	x -= camSpeed;$(13_10)}$(13_10)if(keyboard_check(ord("S")) and y < room_height-camHeight/2){$(13_10)	y += camSpeed;$(13_10)}$(13_10)if(keyboard_check(ord("W")) and  y > camHeight/2){$(13_10)	y -= camSpeed;$(13_10)}"
/// @description Camera Pan
if(keyboard_check(ord("D")) and x < room_width-camWidth/2){
	x += camSpeed;
}
if(keyboard_check(ord("A"))and x > camWidth/2){
	x -= camSpeed;
}
if(keyboard_check(ord("S")) and y < room_height-camHeight/2){
	y += camSpeed;
}
if(keyboard_check(ord("W")) and  y > camHeight/2){
	y -= camSpeed;
}