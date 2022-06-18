function luigis_mansion_dark_moon:spawn_entities/item/gold_bar
scoreboard players remove #gold_bar Selected 1
execute if score #gold_bar Selected matches 1.. run function luigis_mansion_dark_moon:entities/ghost/drop_loot/gold_bar