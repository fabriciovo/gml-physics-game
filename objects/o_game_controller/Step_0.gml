if room == rm_title {
	if keyboard_check_pressed(vk_space){
		room_goto(rm_grassland_world_0);
	}
	exit;
}

if not instance_exists(o_player) {
	if alarm[0] == -1 {
		alarm[0] = 120	
	}
}