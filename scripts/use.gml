var type = argument0;
var hx = global.player.x
var hy = global.player.y

razx = abs(hx-x);
razy = abs(hy-y);
if hy < y {toto = 70} else {toto = 50}

if (razx < 50 && razy < toto) {
switch(type) {
case "perm_container":{
image_speed = 0.5;
open = 1;
break;}
case "once_container":{
image_speed = 0.5;
break;}
case "multi_switch":{
image_speed = 0.5;
uses = 1;
break;}
case "once_switch":{
image_speed = 0.5;
break;}
}

global.block = 0;
instance_create(0,0,obj_block);}

