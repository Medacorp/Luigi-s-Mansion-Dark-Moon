function luigis_mansion_dark_moon:spawn_entities/item/gold_coin
scoreboard players remove #gold_coin Selected 1
execute if score #gold_coin Selected matches 1.. run function luigis_mansion_dark_moon:entities/ghost/drop_loot/gold_coin