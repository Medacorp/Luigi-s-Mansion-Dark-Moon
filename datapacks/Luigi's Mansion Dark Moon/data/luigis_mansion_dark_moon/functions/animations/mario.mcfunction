tag @s add this_mario
scoreboard players operation #temp PassiveNr = @s PassiveNr
data modify storage luigis_mansion_dark_moon:data mario set value {tags:[]}
data modify storage luigis_mansion_dark_moon:data mario.tags set from entity @s Tags
execute as @e[type=minecraft:armor_stand,tag=mario_model,tag=!found_owner] if score @s PassiveNr = #temp PassiveNr run tag @s add this_mario
execute as @e[type=minecraft:armor_stand,tag=this_mario] run function luigis_mansion_dark_moon:animations/mario/main
scoreboard players reset #temp PassiveNr
tag @s remove this_mario
tag @e[tag=this_mario] remove this_mario