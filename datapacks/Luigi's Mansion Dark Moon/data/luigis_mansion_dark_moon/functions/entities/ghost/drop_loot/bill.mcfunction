function luigis_mansion_dark_moon:spawn_entities/item/bill
scoreboard players remove #bill Selected 1
execute if score #bill Selected matches 1.. run function luigis_mansion_dark_moon:entities/ghost/drop_loot/bill