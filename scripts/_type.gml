var item_id = argument0;
var type = argument1;
var item_type;

if type = "item" {
if (item_id < 500) item_type = "potion";
if (item_id > 500 && item_id < 1000) item_type = "chest";
if (item_id > 1000 && item_id < 1500) item_type = "legs";
if (item_id > 1500 && item_id < 2000) item_type = "hands";
if (item_id > 2000 && item_id < 2500) item_type = "helmet";
if (item_id > 9000) item_type = "static";}

if type = "once" {
if (item_id < 2000) item_type = "chest";
if (item_id > 2000 && item_id < 6000) item_type = "switch";
if (item_id > 6000) item_type = "static";}

return item_type;
