tag @s add this_e_gadd
scoreboard players operation #temp PassiveNr = @s PassiveNr
data modify storage luigis_mansion_dark_moon:data e_gadd set value {tags:[]}
data modify storage luigis_mansion_dark_moon:data e_gadd.tags set from entity @s Tags
data modify storage luigis_mansion_dark_moon:data e_gadd.held_item set from entity @s data.held_item
execute as @e[type=minecraft:armor_stand,tag=e_gadd_model,tag=!found_owner] if score @s PassiveNr = #temp PassiveNr run tag @s add this_e_gadd
execute as @e[type=minecraft:armor_stand,tag=this_e_gadd] run function luigis_mansion_dark_moon:animations/e_gadd/main
scoreboard players reset #temp PassiveNr
tag @s remove this_e_gadd
tag @e[tag=this_e_gadd] remove this_e_gadd