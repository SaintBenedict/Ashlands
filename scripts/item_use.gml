var item_slot_id = argument0;

// Первые 500 айдишников - юзабельные поты, зелья, etc.
if global.inventory[item_slot_id] < 500{ 
switch(global.inventory[item_slot_id]){
case 1: global.hp += 20; break;
case 2: global.hp += 50; global.physic_attack += 2; break;
}
global.inventory[item_slot_id] = 0;}
