ini_open("autosave.sav");

// Stats
ini_write_real("Stats","max_val_hero_hp",global.max_val_hero_hp);
ini_write_real("Stats","current_max_val_hero_hp",global.current_max_val_hero_hp);
ini_write_real("Stats","hp",global.hp);
ini_write_real("Stats","xp",global.xp);
ini_write_real("Stats","lvl",global.lvl);
ini_write_real("Stats","magic_attack",global.magic_attack);
ini_write_real("Stats","physic_attack",global.physic_attack);
ini_write_real("Stats","movespeed",global.movespeed);
ini_write_real("Stats","baf_magic_attack",global.baf_magic_attack);
ini_write_real("Stats","baf_physic_attack",global.baf_physic_attack);
ini_write_real("Stats","baf_movespeed",global.baf_movespeed);
ini_write_real("Stats","baf_max_val_hero_hp",global.baf_max_val_hero_hp);
ini_write_real("Stats","lvl_points",global.lvl_points);

// Player
ini_write_real("Player","player_x",global.player.x);
ini_write_real("Player","player_y",global.player.y);
ini_write_real("Player","check",global.check);
ini_write_real("Player","inventory_full",global.inventory_full);
ini_write_real("Player","left_use",global.left_use);

// NPC
ini_write_real("NPC","npc_0q",global.npc_0q);
ini_write_real("NPC","npc_1q",global.npc_1q);

// HotKeys
ini_write_real("Hotkey","hotkey_charlist",global.hotkey_charlist);
ini_write_real("Hotkey","control",global.control);

// Equipment
for (i=0; i<31; i+=1) {ini_write_real("Equipment","inventory"+string(i),global.inventory[i]);}
ini_write_real("Equipment","equipment_chest",global.equipment_chest);
ini_write_real("Equipment","equipment_helmet",global.equipment_helmet);
ini_write_real("Equipment","equipment_hands",global.equipment_hands);
ini_write_real("Equipment","equipment_legs",global.equipment_legs);
ini_write_real("Equipment","hp_chest_baf",global.hp_chest_baf);
ini_write_real("Equipment","hp_helmet_baf",global.hp_helmet_baf);
ini_write_real("Equipment","magic_chest_baf",global.magic_chest_baf);
ini_write_real("Equipment","magic_helmet_baf",global.magic_helmet_baf);
ini_write_real("Equipment","magic_hands_baf",global.magic_hands_baf);
ini_write_real("Equipment","physic_hands_baf",global.physic_hands_baf);
ini_write_real("Equipment","physic_legs_baf",global.physic_legs_baf);
ini_write_real("Equipment","movespeed_legs_baf",global.movespeed_legs_baf);

ini_close();
