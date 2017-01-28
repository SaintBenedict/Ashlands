var item_id = argument0;
var xx = argument1;
var yy = argument2;
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_set_font(f_char_text);
draw_text(xx,yy-16,global.item_name[item_id]);