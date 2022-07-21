tag @s add this_possessor
scoreboard players operation #temp GhostNr = @s GhostNr
data modify storage luigis_mansion_dark_moon:data possessor set value {tags:[]}
data modify storage luigis_mansion_dark_moon:data possessor.tags set from entity @s Tags
execute as @e[type=minecraft:armor_stand,tag=possessor_model,tag=!found_owner] if score @s GhostNr = #temp GhostNr run tag @s add this_possessor
execute as @e[type=minecraft:armor_stand,tag=model_piece,tag=this_possessor] run function luigis_mansion_dark_moon:animations/possessor/main
scoreboard players reset #temp GhostNr
tag @s remove this_possessor
tag @e[tag=this_possessor] remove this_possessor