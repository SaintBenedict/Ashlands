#define pick_up
var item_id = argument0;
var hx = global.player.x
var hy = global.player.y

razx = abs(hx-x);
razy = abs(hy-y);

if (razx < 40 && razy < 50) {
    if (global.inventory_full < 30){
    place_into_inv(item_id);
    instance_destroy();
    window_set_cursor(cr_default);}
    else {
    show_message("Инвентарь переполнен");}
}


#define place_into_inv
var item_id = argument0;
global.inventory_full += 1;

for (i=1;i<31;i+=1;){
if global.inventory[i] = 0 {global.inventory[i] = item_id; break;}
}
