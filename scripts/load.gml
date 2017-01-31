ini_open("autosave.sav");

// Stats
global.max_val_hero_hp = ini_read_real("Stats","max_val_hero_hp",global.max_val_hero_hp);
global.current_max_val_hero_hp = ini_read_real("Stats","current_max_val_hero_hp",global.current_max_val_hero_hp);
global.hp = ini_read_real("Stats","hp",global.hp);
global.xp = ini_read_real("Stats","xp",global.xp);
global.lvl = ini_read_real("Stats","lvl",global.lvl);
global.magic_attack = ini_read_real("Stats","magic_attack",global.magic_attack);
global.physic_attack = ini_read_real("Stats","physic_attack",global.physic_attack);
global.movespeed = ini_read_real("Stats","movespeed",global.movespeed);
global.baf_magic_attack = ini_read_real("Stats","baf_magic_attack",global.baf_magic_attack);
global.baf_physic_attack = ini_read_real("Stats","baf_physic_attack",global.baf_physic_attack);
global.baf_movespeed = ini_read_real("Stats","baf_movespeed",global.baf_movespeed);
global.baf_max_val_hero_hp = ini_read_real("Stats","baf_max_val_hero_hp",global.baf_max_val_hero_hp);
global.lvl_points = ini_read_real("Stats","lvl_points",global.lvl_points);

// Player
global.player_x = ini_read_real("Player","player_x",global.player_x);
global.player_y = ini_read_real("Player","player_y",global.player_y);
global.check = ini_read_real("Player","check",global.check);
global.inventory_full = ini_read_real("Player","inventory_full",global.inventory_full);
global.left_use = ini_read_real("Player","left_use",global.left_use);

// NPC
global.npc_0q = ini_read_real("NPC","npc_0q",global.npc_0q);
global.npc_1q = ini_read_real("NPC","npc_1q",global.npc_1q);

// HotKeys
global.hotkey_charlist = ini_read_real("Hotkey","hotkey_charlist",global.hotkey_charlist);
global.control = ini_read_real("Hotkey","control",global.control);

// Equipment
for (i=0; i<31; i+=1) {global.inventory[i] = ini_read_real("Equipment","inventory"+string(i),global.inventory[i]);}
global.equipment_chest = ini_read_real("Equipment","equipment_chest",global.equipment_chest);
global.equipment_helmet = ini_read_real("Equipment","equipment_helmet",global.equipment_helmet);
global.equipment_hands = ini_read_real("Equipment","equipment_hands",global.equipment_hands);
global.equipment_legs = ini_read_real("Equipment","equipment_legs",global.equipment_legs);
global.hp_chest_baf = ini_read_real("Equipment","hp_chest_baf",global.hp_chest_baf);
global.hp_helmet_baf = ini_read_real("Equipment","hp_helmet_baf",global.hp_helmet_baf);
global.magic_chest_baf = ini_read_real("Equipment","magic_chest_baf",global.magic_chest_baf);
global.magic_helmet_baf = ini_read_real("Equipment","magic_helmet_baf",global.magic_helmet_baf);
global.magic_hands_baf = ini_read_real("Equipment","magic_hands_baf",global.magic_hands_baf);
global.physic_hands_baf = ini_read_real("Equipment","physic_hands_baf",global.physic_hands_baf);
global.physic_legs_baf = ini_read_real("Equipment","physic_legs_baf",global.physic_legs_baf);
global.movespeed_legs_baf = ini_read_real("Equipment","movespeed_legs_baf",global.movespeed_legs_baf);

ini_close();
room_goto(room_start);
