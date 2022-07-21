tag @s add this_sister_lucinda
scoreboard players operation #temp GhostNr = @s GhostNr
data modify storage luigis_mansion_dark_moon:data sister_lucinda set value {tags:[]}
data modify storage luigis_mansion_dark_moon:data sister_lucinda.tags set from entity @s Tags
execute as @e[type=minecraft:armor_stand,tag=sister_lucinda_model,tag=!found_owner] if score @s GhostNr = #temp GhostNr run tag @s add this_sister_lucinda
execute as @e[type=minecraft:armor_stand,tag=model_piece,tag=this_sister_lucinda] run function luigis_mansion_dark_moon:animations/sister_lucinda/main
scoreboard players reset #temp GhostNr
tag @s remove this_sister_lucinda
tag @e[tag=this_sister_lucinda] remove this_sister_lucinda