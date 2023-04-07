if can_take_damage == false exit
state = player_states.damage
if phy_speed >= 5 {
	instance_destroy(other)
}else if phy_speed <= 3 {
	physics_apply_impulse(x,y, -10,-40)
}
can_take_damage = false;
alarm[0] = 120	