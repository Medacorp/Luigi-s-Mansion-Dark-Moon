tag @s add this_sister_berlinda
scoreboard players operation #temp GhostNr = @s GhostNr
data modify storage luigis_mansion_dark_moon:data sister_berlinda set value {tags:[]}
data modify storage luigis_mansion_dark_moon:data sister_berlinda.tags set from entity @s Tags
execute as @e[type=minecraft:armor_stand,tag=sister_berlinda_model,tag=!found_owner] if score @s GhostNr = #temp GhostNr run tag @s add this_sister_berlinda
execute as @e[type=minecraft:armor_stand,tag=this_sister_berlinda] run function luigis_mansion_dark_moon:animations/sister_berlinda/main
scoreboard players reset #temp GhostNr
tag @s remove this_sister_berlinda
tag @e[tag=this_sister_berlinda] remove this_sister_berlinda