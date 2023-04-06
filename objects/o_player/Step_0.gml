sprite_index = sprite[state]

if mouse_check_button_pressed(mb_left) and not drag_state and can_jump{
	drag_state = true;
}
if mouse_check_button_released(mb_left) and drag_state and can_jump {
	drag_state = false;
	physics_apply_impulse(x,y,(x-mouse_x) / 2,(y-mouse_y) / 2 );
}


if phy_speed_y == 0 {
	can_jump = true;
}else{
	can_jump = false;
}


if drag_state {
	state = player_states.hold
} 
if phy_speed_y < -1 {
	state = player_states.jump
}else if phy_speed_y > 0.5 {
	state = player_states.fall
} else if phy_speed_y == 0 {
	state = player_states.normal
}

if drag_state {
	image_xscale = sign(x - mouse_x);
}

if phy_rotation > 1 || phy_rotation < -1{
	//help state
}