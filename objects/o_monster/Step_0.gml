sprite_index = sprite[state]
var dir = sign(phy_speed_x)

image_xscale = dir == 0 ? 1 : dir;

if phy_speed_x != 0 {
	state = monster_states.walk
	image_speed = 0.3
}
if phy_speed_x == 0  {
	state = monster_states.normal
	image_speed = 0
}


