tag @s add this_sister_merlinda
scoreboard players operation #temp GhostNr = @s GhostNr
data modify storage luigis_mansion_dark_moon:data sister_merlinda set value {tags:[]}
data modify storage luigis_mansion_dark_moon:data sister_merlinda.tags set from entity @s Tags
execute as @e[type=minecraft:armor_stand,tag=sister_merlinda_model,tag=!found_owner] if score @s GhostNr = #temp GhostNr run tag @s add this_sister_merlinda
execute as @e[type=minecraft:armor_stand,tag=model_piece,tag=this_sister_merlinda] run function luigis_mansion_dark_moon:animations/sister_merlinda/main
scoreboard players reset #temp GhostNr
tag @s remove this_sister_merlinda
tag @e[tag=this_sister_merlinda] remove this_sister_merlinda