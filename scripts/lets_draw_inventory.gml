#define lets_draw_inventory
var x1 = argument0+44;
var x_e = argument0;
var y_e = argument1;
var y1 = argument1+454;
var y2 = argument1+502;
var xm = 49;
var y1u = y1-23;
var y1d = y1+23;
var x1l = x1-23;
var x1r = x1+23;
var y2u = y2-23;
var y2d = y2+23;



for (i=1;i<16;i+=1){
    if global.inventory[i] != 0{
        draw_sprite(global.item_sprite[global.inventory[i]],0,x1+(xm*(i-1)),y1);
    }
}

for (i=16;i<31;i+=1){
    if global.inventory[i] != 0{
        draw_sprite(global.item_sprite[global.inventory[i]],0,x1+(xm*(i-16)),y2);
    }
}



for (i=1;i<16;i+=1){
if (mouse_x-view_xview[0]>x1l+(xm*(i-1)) && mouse_x-view_xview[0]<x1r+(xm*(i-1)) && mouse_y-view_yview[0]>y1u && mouse_y-view_yview[0]<y1d){
    if global.inventory[i] != 0 {item_caption(i,x1r+(xm*(i-1)),y1u);}
    if mouse_check_button_pressed(mb_right){ item_use(i); }
    if (mouse_check_button_pressed(mb_left) && touch = 0 && global.inventory[i] != 0) {touch = 1; item_pull(i);}
    if (mouse_check_button_released(mb_left) && touch = 1) {touch = 0; item_put(i);}
}
}

for (i=16;i<31;i+=1){
if (mouse_x-view_xview[0]>x1l+(xm*(i-16)) && mouse_x-view_xview[0]<x1r+(xm*(i-16)) && mouse_y-view_yview[0]>y2u && mouse_y-view_yview[0]<y2d){
    if global.inventory[i] != 0 {item_caption(i,x1r+(xm*(i-16)),y2u);}
    if mouse_check_button_pressed(mb_right){ item_use(i); }
    if (mouse_check_button_pressed(mb_left) && touch = 0 && global.inventory[i] != 0) {touch = 1; item_pull(i);}
    if (mouse_check_button_released(mb_left) && touch = 1) {touch = 0; item_put(i);}
}
}
// Грудак
if global.equipment_chest != 0{
draw_sprite(global.item_sprite[global.equipment_chest],0,x_e+41,y_e+171);}
else {draw_sprite(spr_char_chest,0,x_e+41,y_e+171);}
if (mouse_x-view_xview[0]>x_e+41-23 && mouse_x-view_xview[0]<x_e+41+23 && mouse_y-view_yview[0]>y_e+171-23 && mouse_y-view_yview[0]<y_e+171+23){
    if global.equipment_chest != 0 
        {
        draw_set_halign(fa_left);
        draw_set_color(c_black);
        draw_set_alpha(0.75);
        draw_rectangle(x_e+41+23-10,y_e+171-23+10,x_e+41+23+190,y_e+171-23-90,c_black);
        draw_set_alpha(1);
        draw_set_color(c_white);
        draw_set_font(f_char);
        draw_set_valign(fa_top);
        draw_text(x_e+41+23-5,y_e+171-23-85,global.item_name[global.equipment_chest]);
        draw_set_font(f_char_text);
        draw_text(x_e+41+23-5,y_e+171-23-60,global.item_text[global.equipment_chest]);
        draw_set_valign(fa_middle);
        }
    if mouse_check_button_pressed(mb_right){ item_to_inv("chest",global.equipment_chest); }
}
// Ноги
if global.equipment_legs != 0{
draw_sprite(global.item_sprite[global.equipment_legs],0,x_e+363,y_e+171);}
else {draw_sprite(spr_char_legs,0,x_e+363,y_e+171);}
if (mouse_x-view_xview[0]>x_e+363-23 && mouse_x-view_xview[0]<x_e+363+23 && mouse_y-view_yview[0]>y_e+171-23 && mouse_y-view_yview[0]<y_e+171+23){
    if global.equipment_legs != 0 
        {
        draw_set_halign(fa_left);
        draw_set_color(c_black);
        draw_set_alpha(0.75);
        draw_rectangle(x_e+363+23-10,y_e+171-23+10,x_e+363+23+190,y_e+171-23-90,c_black);
        draw_set_alpha(1);
        draw_set_color(c_white);
        draw_set_font(f_char);
        draw_set_valign(fa_top);
        draw_text(x_e+363+23-5,y_e+171-23-85,global.item_name[global.equipment_legs]);
        draw_set_font(f_char_text);
        draw_text(x_e+363+23-5,y_e+171-23-60,global.item_text[global.equipment_legs]);
        draw_set_valign(fa_middle);
        }
    if mouse_check_button_pressed(mb_right){ item_to_inv("legs",global.equipment_legs); }
}
// Руки
if global.equipment_hands != 0{
draw_sprite(global.item_sprite[global.equipment_hands],0,x_e+363,y_e+107);}
else {draw_sprite(spr_char_hands,0,x_e+363,y_e+107);}
if (mouse_x-view_xview[0]>x_e+363-23 && mouse_x-view_xview[0]<x_e+363+23 && mouse_y-view_yview[0]>y_e+107-23 && mouse_y-view_yview[0]<y_e+107+23){
    if global.equipment_hands != 0 
        {
        draw_set_halign(fa_left);
        draw_set_color(c_black);
        draw_set_alpha(0.75);
        draw_rectangle(x_e+363+23-10,y_e+107-23+10,x_e+363+23+190,y_e+107-23-90,c_black);
        draw_set_alpha(1);
        draw_set_color(c_white);
        draw_set_font(f_char);
        draw_set_valign(fa_top);
        draw_text(x_e+363+23-5,y_e+107-23-85,global.item_name[global.equipment_hands]);
        draw_set_font(f_char_text);
        draw_text(x_e+363+23-5,y_e+107-23-60,global.item_text[global.equipment_hands]);
        draw_set_valign(fa_middle);
        }
    if mouse_check_button_pressed(mb_right){ item_to_inv("hands",global.equipment_hands); }
}
// Шлем
if global.equipment_helmet != 0{
draw_sprite(global.item_sprite[global.equipment_helmet],0,x_e+41,y_e+106);}
else {draw_sprite(spr_char_helmet,0,x_e+41,y_e+106);}
if (mouse_x-view_xview[0]>x_e+41-23 && mouse_x-view_xview[0]<x_e+41+23 && mouse_y-view_yview[0]>y_e+106-23 && mouse_y-view_yview[0]<y_e+106+23){
    if global.equipment_helmet != 0 
        {
        draw_set_halign(fa_left);
        draw_set_color(c_black);
        draw_set_alpha(0.75);
        draw_rectangle(x_e+41+23-10,y_e+106-23+10,x_e+41+23+190,y_e+106-23-90,c_black);
        draw_set_alpha(1);
        draw_set_color(c_white);
        draw_set_font(f_char);
        draw_set_valign(fa_top);
        draw_text(x_e+41+23-5,y_e+106-23-85,global.item_name[global.equipment_helmet]);
        draw_set_font(f_char_text);
        draw_text(x_e+41+23-5,y_e+106-23-60,global.item_text[global.equipment_helmet]);
        draw_set_valign(fa_middle);
        }
    if mouse_check_button_pressed(mb_right){ item_to_inv("helmet",global.equipment_helmet); }
}


#define item_caption
var item_slot_id = argument0;
var item_id = global.inventory[item_slot_id]

var xx = argument1;
var yy = argument2;

draw_set_halign(fa_left);
draw_set_color(c_black);
draw_set_alpha(0.75);
draw_rectangle(xx-10,yy+10,xx+190,yy-90,c_black);
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_font(f_char);
draw_set_valign(fa_top);
draw_text(xx-5,yy-85,global.item_name[item_id]);
draw_set_font(f_char_text);
draw_text(xx-5,yy-60,global.item_text[item_id]);
draw_set_valign(fa_middle);

#define item_pull
var i = argument0;
pull_inventory = global.inventory[i];
global.inventory[i] = 0;
time_inventory = i;
cursor_sprite = global.item_sprite[pull_inventory];

#define item_put
var i = argument0;
if global.inventory[i] = 0 {
global.inventory[i] = pull_inventory;}
else {
global.inventory[time_inventory] = global.inventory[i];
global.inventory[i] = pull_inventory;}

cursor_sprite = -1;
#define item_to_inv
var type = argument0;
var i_id = argument1;

for (k=1;k<31;k+=1){
if global.inventory[k] = 0{
global.inventory[k] = i_id;
global.inventory_full += 1;
switch(type){
case "chest": {global.equipment_chest = 0; break;}
case "legs": {global.equipment_legs = 0; break;}
case "hands": {global.equipment_hands = 0; break;}
case "helmet": {global.equipment_helmet = 0; break;}
}
break;}
}

