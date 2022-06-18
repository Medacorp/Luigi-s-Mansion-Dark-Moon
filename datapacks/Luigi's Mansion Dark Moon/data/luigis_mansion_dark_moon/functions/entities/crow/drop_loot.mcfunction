execute if entity @s[tag=!gold] run scoreboard players set #bill Selected 1
execute if entity @s[tag=gold] run scoreboard players set #bill Selected 15
execute if entity @a[tag=!gold,scores={Health=..99}] if predicate luigis_mansion_dark_moon:turn_loot_to_heart run function luigis_mansion_dark_moon:entities/ghost/turn_loot_to_heart
function luigis_mansion_dark_moon:entities/ghost/drop_loot