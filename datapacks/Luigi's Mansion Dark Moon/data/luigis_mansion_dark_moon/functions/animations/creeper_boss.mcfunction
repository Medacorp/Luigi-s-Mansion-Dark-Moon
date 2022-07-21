tag @s add this_creeper
scoreboard players operation #temp GhostNr = @s GhostNr
data modify storage luigis_mansion_dark_moon:data creeper set value {tags:[]}
data modify storage luigis_mansion_dark_moon:data creeper.tags set from entity @s Tags
execute as @e[type=minecraft:armor_stand,tag=creeper_model,tag=!found_owner] if score @s GhostNr = #temp GhostNr run tag @s add this_creeper
execute as @e[type=minecraft:armor_stand,tag=model_piece,tag=this_creeper] run function luigis_mansion_dark_moon:animations/creeper_boss/main
scoreboard players reset #temp GhostNr
tag @s remove this_creeper
tag @e[tag=this_creeper] remove this_creeper