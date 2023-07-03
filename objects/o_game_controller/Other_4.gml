if room == rm_title exit
if not instance_exists(o_player) {
	instance_create_layer(o_start.x,o_start.y,"Instances",o_player);
}