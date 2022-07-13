tag @s add this_sneaker
scoreboard players operation #temp GhostNr = @s GhostNr
data modify storage luigis_mansion_dark_moon:data sneaker set value {tags:[]}
data modify storage luigis_mansion_dark_moon:data sneaker.tags set from entity @s Tags
execute as @e[type=minecraft:armor_stand,tag=sneaker_model,tag=!found_owner] if score @s GhostNr = #temp GhostNr run tag @s add this_sneaker
execute as @e[type=minecraft:armor_stand,tag=this_sneaker] run function luigis_mansion_dark_moon:animations/sneaker/main
scoreboard players reset #temp GhostNr
tag @s remove this_sneaker
tag @e[tag=this_sneaker] remove this_sneaker