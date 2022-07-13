tag @s add this_polterpup
scoreboard players operation #temp GhostNr = @s GhostNr
data modify storage luigis_mansion_dark_moon:data polterpup set value {tags:[]}
data modify storage luigis_mansion_dark_moon:data polterpup.tags set from entity @s Tags
execute as @e[type=minecraft:armor_stand,tag=polterpup_model,tag=!found_owner] if score @s GhostNr = #temp GhostNr run tag @s add this_polterpup
execute as @e[type=minecraft:armor_stand,tag=this_polterpup] run function luigis_mansion_dark_moon:animations/polterpup/main
scoreboard players reset #temp GhostNr
tag @s remove this_polterpup
tag @e[tag=this_polterpup] remove this_polterpup