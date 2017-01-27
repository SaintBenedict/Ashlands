var x1 = argument0+44;
var y1 = argument1+454;
var y2 = argument1+502;
var xm = 49;

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
