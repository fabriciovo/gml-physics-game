if mouse_check_button_pressed(mb_left) and not drag_state{
	drag_state = true;
}

if mouse_check_button_released(mb_left) and drag_state {
	drag_state = false;
	physics_apply_impulse(x,y,(x-mouse_x) / 2,(y-mouse_y) / 2 );
	
}