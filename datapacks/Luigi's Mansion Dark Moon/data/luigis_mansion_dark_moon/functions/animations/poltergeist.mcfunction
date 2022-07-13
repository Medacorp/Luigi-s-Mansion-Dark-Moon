tag @s add this_poltergeist
scoreboard players operation #temp GhostNr = @s GhostNr
data modify storage luigis_mansion_dark_moon:data poltergeist set value {tags:[]}
data modify storage luigis_mansion_dark_moon:data poltergeist.tags set from entity @s Tags
execute as @e[type=minecraft:armor_stand,tag=poltergeist_model,tag=!found_owner] if score @s GhostNr = #temp GhostNr run tag @s add this_poltergeist
execute as @e[type=minecraft:armor_stand,tag=this_poltergeist] run function luigis_mansion_dark_moon:animations/poltergeist/main
scoreboard players reset #temp GhostNr
tag @s remove this_poltergeist
tag @e[tag=this_poltergeist] remove this_poltergeist