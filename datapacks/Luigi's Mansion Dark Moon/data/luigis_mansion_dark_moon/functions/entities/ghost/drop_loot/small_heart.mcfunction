function luigis_mansion_dark_moon:spawn_entities/item/heart
scoreboard players remove #heart Selected 1
execute if score #heart Selected matches 1.. run function luigis_mansion_dark_moon:entities/ghost/drop_loot/heart