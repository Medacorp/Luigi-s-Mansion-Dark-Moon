tag @s add this_gobber
scoreboard players operation #temp GhostNr = @s GhostNr
data modify storage luigis_mansion_dark_moon:data gobber set value {tags:[]}
data modify storage luigis_mansion_dark_moon:data gobber.tags set from entity @s Tags
data modify storage luigis_mansion_dark_moon:data gobber.held_item set from entity @s data.held_item
execute as @e[type=minecraft:armor_stand,tag=gobber_model,tag=!found_owner] if score @s GhostNr = #temp GhostNr run tag @s add this_gobber
execute as @e[type=minecraft:armor_stand,tag=this_gobber] run function luigis_mansion_dark_moon:animations/gobber/main
scoreboard players reset #temp GhostNr
tag @s remove this_gobber
tag @e[tag=this_gobber] remove this_gobber