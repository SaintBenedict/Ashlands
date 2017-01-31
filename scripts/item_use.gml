var item_slot_id = argument0;

// Первые 500 айдишников - юзабельные поты, зелья, etc.
if global.inventory[item_slot_id] < 500{ 
switch(global.inventory[item_slot_id]){
case 1: global.hp += 20; break;
case 2: global.hp += 50; global.physic_attack += 2; break;
}
global.inventory[item_slot_id] = 0;
global.inventory_full -= 1;}
// 500-1000 Броньки
if global.inventory[item_slot_id] > 500 && global.inventory[item_slot_id] < 1000{ 
if (global.equipment_chest = 0){
global.equipment_chest = global.inventory[item_slot_id];
global.inventory[item_slot_id] = 0;
global.inventory_full -= 1;}
else {
var temp = global.equipment_chest;
global.equipment_chest = global.inventory[item_slot_id];
global.inventory[item_slot_id] = temp}
}
// 1000-1500 Боты
if global.inventory[item_slot_id] > 1000 && global.inventory[item_slot_id] < 1500{ 
if (global.equipment_legs = 0){
global.equipment_legs = global.inventory[item_slot_id];
global.inventory[item_slot_id] = 0;
global.inventory_full -= 1;}
else {
var temp = global.equipment_legs;
global.equipment_legs = global.inventory[item_slot_id];
global.inventory[item_slot_id] = temp}
}
// 1500-2000 Перчи
if global.inventory[item_slot_id] > 1500 && global.inventory[item_slot_id] < 2000{ 
if (global.equipment_hands = 0){
global.equipment_hands = global.inventory[item_slot_id];
global.inventory[item_slot_id] = 0;
global.inventory_full -= 1;}
else {
var temp = global.equipment_hands;
global.equipment_hands = global.inventory[item_slot_id];
global.inventory[item_slot_id] = temp}
}
// 2000-2500 Шлемы
if global.inventory[item_slot_id] > 2000 && global.inventory[item_slot_id] < 2500{ 
if (global.equipment_helmet = 0){
global.equipment_helmet = global.inventory[item_slot_id];
global.inventory[item_slot_id] = 0;
global.inventory_full -= 1;}
else {
var temp = global.equipment_helmet;
global.equipment_helmet = global.inventory[item_slot_id];
global.inventory[item_slot_id] = temp}
}
