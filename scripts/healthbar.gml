var cur_pix = argument0;
var cur_hp = argument1;

draw_sprite(spr_hp,cur_pix,x,y+32);
draw_set_halign(fa_center);
draw_set_font(font_hp);
draw_text_color(x,y+32,cur_hp,c_black,c_black,c_black,c_black,1);