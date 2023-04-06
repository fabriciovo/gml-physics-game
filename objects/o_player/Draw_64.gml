var _margin = 4
var _start_x = _margin;
var _start_y = _margin;
var _size = sprite_get_height(s_solid)
var _dist = _size + _margin


for (var _i = 0; _i < hp; _i++){
	draw_sprite(s_solid, 0, _start_x  + _dist * _i, _start_y);
}

for (var _i = 0; _i < stamina; _i++){
	draw_sprite(s_solid, 0, _start_x  + _dist * _i , _start_y + 36);
}
