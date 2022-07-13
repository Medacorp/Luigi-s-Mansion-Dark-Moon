tag @s add this_toad
scoreboard players operation #temp PassiveNr = @s PassiveNr
data modify storage luigis_mansion_dark_moon:data toad set value {tags:[]}
data modify storage luigis_mansion_dark_moon:data toad.tags set from entity @s Tags
execute as @e[type=minecraft:armor_stand,tag=toad_model,tag=!found_owner] if score @s PassiveNr = #temp PassiveNr run tag @s add this_toad
execute as @e[type=minecraft:armor_stand,tag=this_toad] run function luigis_mansion_dark_moon:animations/toad/main
scoreboard players reset #temp PassiveNr
tag @s remove this_toad
tag @e[tag=this_toad] remove this_toad