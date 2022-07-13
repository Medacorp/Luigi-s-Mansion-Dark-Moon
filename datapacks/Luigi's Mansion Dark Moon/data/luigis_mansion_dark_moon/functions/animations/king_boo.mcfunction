tag @s add this_king_boo
scoreboard players operation #temp GhostNr = @s GhostNr
data modify storage luigis_mansion_dark_moon:data king_boo set value {tags:[]}
data modify storage luigis_mansion_dark_moon:data king_boo.tags set from entity @s Tags
execute as @e[type=minecraft:armor_stand,tag=king_boo_model,tag=!found_owner] if score @s GhostNr = #temp GhostNr run tag @s add this_king_boo
execute as @e[type=minecraft:armor_stand,tag=this_king_boo] run function luigis_mansion_dark_moon:animations/king_boo/main
scoreboard players reset #temp GhostNr
tag @s remove this_king_boo
tag @e[tag=this_king_boo] remove this_king_boo