#define pick_up
var item_id = argument0;
var hx = global.player.x
var hy = global.player.y

var razx = abs(hx-x);
var razy = abs(hy-y);
if hy < y {toto = 70} else {toto = 50}

if (global.block = 0 && razx < 50 && razy < toto) {
    if (global.inventory_full < 30){
    place_into_inv(item_id);
    instance_destroy();
    }
    else {
    show_message("Инвентарь переполнен");}
    instance_create(0,0,obj_block);}
else {instance_create(mouse_x, mouse_y, obj_mouseclick);}


#define place_into_inv
var item_id = argument0;
global.inventory_full += 1;

for (i=1;i<31;i+=1;){
if global.inventory[i] = 0 {global.inventory[i] = item_id; break;}
}