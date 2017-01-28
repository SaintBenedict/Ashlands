/// Списки дропа предметов
var mob_id = argument0;
var xx = argument1;
var yy = argument2;
switch(mob_id){

////////////////////////////////////// Зомби
/*может падать 1 предмет
ИД 0
шанс падения 60%*/
case 0: {
if irandom(100) < 60 {
instance_create(xx+irandom_range(-20,20),yy+irandom_range(-20,20),global.item[1]);}
break;}

///////////////////////////////////// Зомби грин
/*могут падать обма предмета
ид 0
шанс 80%
ид 1 шанс 50%*/
case 1: {
if irandom(100) < 80 {
instance_create(xx+irandom_range(-20,20),yy+irandom_range(-20,20),global.item[1]);}
if irandom(100) < 50 {
instance_create(xx+irandom_range(-20,20),yy+irandom_range(-20,20),global.item[2]);}
break;}

///////////////////////////////////// Зомби рэд
/*может падать ид 0
шанс 100%
ид 1 шанс 80%
ид 0 может упасть дважды с шансом 40%*/
case 2: {
instance_create(xx+irandom_range(-20,20),yy+irandom_range(-20,20),global.item[1]);
if irandom(100) < 40 {
instance_create(xx+irandom_range(-20,20),yy+irandom_range(-20,20),global.item[1]);}
if irandom(100) < 80 {
instance_create(xx+irandom_range(-20,20),yy+irandom_range(-20,20),global.item[2]);}
break;}

//
}