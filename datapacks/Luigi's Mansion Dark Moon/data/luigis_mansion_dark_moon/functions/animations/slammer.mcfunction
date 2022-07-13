tag @s add this_slammer
scoreboard players operation #temp GhostNr = @s GhostNr
data modify storage luigis_mansion_dark_moon:data slammer set value {tags:[]}
data modify storage luigis_mansion_dark_moon:data slammer.tags set from entity @s Tags
execute as @e[type=minecraft:armor_stand,tag=slammer_model,tag=!found_owner] if score @s GhostNr = #temp GhostNr run tag @s add this_slammer
execute as @e[type=minecraft:armor_stand,tag=this_slammer] run function luigis_mansion_dark_moon:animations/slammer/main
scoreboard players reset #temp GhostNr
tag @s remove this_slammer
tag @e[tag=this_slammer] remove this_slammer