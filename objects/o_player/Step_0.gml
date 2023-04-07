sprite_index = sprite[state]
if hp <= 0 {
	instance_destroy()
}


if state == player_states.damage {
	phy_fixed_rotation = false
	if phy_speed_y > .3 || phy_speed_y < -.3{
		//phy_rotation += 8;
	}
	
}else {
	phy_fixed_rotation = true
	phy_rotation = 0
	if mouse_check_button_pressed(mb_left) and not drag_state {
		drag_state = true;
	}
	if mouse_check_button_released(mb_left) and drag_state {
	
		if grounded {
			physics_apply_impulse(x,y,(x-mouse_x) / 2,(y-mouse_y) / 2 );
		} else if not grounded and stamina > 0 {
			stamina--;
			physics_apply_impulse(x,y,(x-mouse_x) / 2,(y-mouse_y) / 2 );
		}
	
	
		drag_state = false;
	

	}


	if phy_speed_y == 0 {
		grounded = true;
	}else{
		grounded = false;
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

}






