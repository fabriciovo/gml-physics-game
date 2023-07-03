if room == rm_title {
	if keyboard_check_pressed(vk_space){
		room_goto(rm_grassland_world_0);
	}
}
if not object_exists(o_player) {
	instance_create_layer(o_start.x,o_start.y,"Instances",o_player);
}