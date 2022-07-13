tag @s add this_hider
scoreboard players operation #temp GhostNr = @s GhostNr
data modify storage luigis_mansion_dark_moon:data hider set value {tags:[]}
data modify storage luigis_mansion_dark_moon:data hider.tags set from entity @s Tags
execute as @e[type=minecraft:armor_stand,tag=hider_model,tag=!found_owner] if score @s GhostNr = #temp GhostNr run tag @s add this_hider
execute as @e[type=minecraft:armor_stand,tag=this_hider] run function luigis_mansion_dark_moon:animations/hider/main
scoreboard players reset #temp GhostNr
tag @s remove this_hider
tag @e[tag=this_hider] remove this_hider