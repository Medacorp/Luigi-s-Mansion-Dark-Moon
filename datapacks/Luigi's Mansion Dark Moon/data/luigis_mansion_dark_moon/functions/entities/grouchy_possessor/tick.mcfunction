execute if entity @s[tag=!no_ai] run function luigis_mansion_dark_moon:entities/grouchy_possessor/ai

execute unless entity @s[scores={DarkLightTime=60..}] run scoreboard players add @s[tag=in_dark_light] DarkLightTime 1
scoreboard players remove @s[tag=!in_dark_light,scores={DarkLightTime=1..}] DarkLightTime 1
execute if entity @s[scores={DarkLightTime=1..}] run particle minecraft:dust 1 1 1 0 ~ ~0.5 ~ 0.4 0.4 0.4 0 1 force @a[tag=same_room,tag=!has_dark_light_goggles]
particle minecraft:dust 1 1 1 0 ~ ~0.5 ~ 0.4 0.4 0.4 0 1 force @a[tag=same_room,tag=has_dark_light_goggles]

function luigis_mansion_dark_moon:animations/possessor

execute if entity @s[tag=lose_layer] run function luigis_mansion_dark_moon:entities/grouchy_possessor/drop_hearts
execute if entity @s[tag=captured] run function luigis_mansion_dark_moon:entities/grouchy_possessor/drop_loot