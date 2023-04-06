draw_self();
draw_rectangle(x-16, y-16, x+sprite_width/2, y+sprite_height/2,true );

if drag_state draw_line(x,y,mouse_x,mouse_y);

draw_text(x,y-16, string(phy_rotation));