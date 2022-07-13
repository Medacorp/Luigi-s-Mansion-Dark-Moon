tag @s add this_boo
scoreboard players operation #temp GhostNr = @s GhostNr
data modify storage luigis_mansion_dark_moon:data boo set value {tags:[]}
data modify storage luigis_mansion_dark_moon:data boo.tags set from entity @s Tags
execute as @e[type=minecraft:armor_stand,tag=boo_model,tag=!found_owner] if score @s GhostNr = #temp GhostNr run tag @s add this_boo
execute as @e[type=minecraft:armor_stand,tag=this_boo] run function luigis_mansion_dark_moon:animations/boo/main
scoreboard players reset #temp GhostNr
tag @s remove this_boo
tag @e[tag=this_boo] remove this_boo