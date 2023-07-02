sprite_index = sprite[state]



if phy_speed_x != 0 {
	state = monster_states.walk
	image_speed = 0.3
}
if phy_speed_x == 0  {
	state = monster_states.normal
	image_speed = 0
}
if phy_speed_x > 0 {
	image_xscale = -1
}
if phy_speed_x < 0 {
	image_xscale = 1
}
