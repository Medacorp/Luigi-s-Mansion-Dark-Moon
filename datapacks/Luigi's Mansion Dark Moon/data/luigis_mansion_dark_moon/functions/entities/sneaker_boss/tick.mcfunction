execute if entity @s[tag=!no_ai] run function luigis_mansion_dark_moon:entities/sneaker_boss/ai

execute unless entity @s[scores={DarkLightTime=60..}] run scoreboard players add @s[tag=in_dark_light] DarkLightTime 1
scoreboard players remove @s[tag=!in_dark_light,scores={DarkLightTime=1..}] DarkLightTime 1
execute if entity @s[scores={DarkLightTime=1..}] run particle minecraft:dust 1 1 0 3 ~ ~0.5 ~ 0.4 0.4 0.4 0 1 force @a[tag=same_room,tag=!has_dark_light_goggles]
particle minecraft:dust 1 1 0 3 ~ ~0.5 ~ 0.4 0.4 0.4 0 1 force @a[tag=same_room,tag=has_dark_light_goggles]

function luigis_mansion_dark_moon:animations/sneaker_boss

execute if entity @s[tag=captured] run function luigis_mansion_dark_moon:entities/sneaker_boss/drop_loot