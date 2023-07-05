sprite_index = sprite[state]
if hp <= 0 {
	instance_destroy()
}


if state == player_states.damage {
	phy_fixed_rotation = false
	phy_rotation += 8;
}else {
	phy_fixed_rotation = true
	phy_rotation = 0
	if mouse_check_button_pressed(mb_left) and not drag_state {
		drag_state = true;
	}
	if mouse_check_button_released(mb_left) and drag_state {
		if grounded {
			physics_apply_impulse(x,y,(x-mouse_x) / 2,(y-mouse_y) / 2 );
		} else if not grounded  {
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

	if phy_speed_y < -1 {
		state = player_states.jump
	}else if phy_speed_y > 0.5 {
		state = player_states.fall
	} else if phy_speed_y == 0 {
		state = player_states.normal
	}

	if drag_state {
		image_xscale = sign(x - mouse_x);
		if grounded {
			state = player_states.hold
		}
	}

}



if phy_speed_x != 0 {
	//drag_state = false
}


//if place_meeting(x,y-1,o_ice_solid){
//	physics_set_friction(fix_id, 0.1);
//}
//if place_meeting(x,y-1,o_solid){
//	physics_set_friction(fix_id, 0.1);
//}