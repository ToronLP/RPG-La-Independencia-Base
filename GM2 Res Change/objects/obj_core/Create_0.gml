/// @description Camera Setup

// Starting Position
x = room_width/2;
y = room_height/2;

// Camera
camSpeed = 16;
camWidth = 640;
camHeight = 360;

// Window
windowWidth = 1280;
windowHeight = 720;
window_set_size(windowWidth, windowHeight);

// Monitor
monitorWidth = display_get_width();
monitorHeight = display_get_height();
window_set_position(monitorWidth/2-windowWidth/2, monitorHeight/2-windowHeight/2);