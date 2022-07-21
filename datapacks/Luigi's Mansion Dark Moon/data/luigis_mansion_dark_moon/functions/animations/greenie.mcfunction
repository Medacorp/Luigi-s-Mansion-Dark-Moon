tag @s add this_greenie
scoreboard players operation #temp GhostNr = @s GhostNr
data modify storage luigis_mansion_dark_moon:data greenie set value {tags:[]}
data modify storage luigis_mansion_dark_moon:data greenie.tags set from entity @s Tags
execute as @e[type=minecraft:armor_stand,tag=greenie_model,tag=!found_owner] if score @s GhostNr = #temp GhostNr run tag @s add this_greenie
execute as @e[type=minecraft:armor_stand,tag=model_piece,tag=this_greenie] run function luigis_mansion_dark_moon:animations/greenie/main
scoreboard players reset #temp GhostNr
tag @s remove this_greenie
tag @e[tag=this_greenie] remove this_greenie