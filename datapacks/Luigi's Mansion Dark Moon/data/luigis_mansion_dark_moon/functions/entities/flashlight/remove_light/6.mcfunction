fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:light[waterlogged=false,level=6]
fill ~ ~ ~ ~ ~ ~ minecraft:water[level=0] replace minecraft:light[waterlogged=true,level=6]
scoreboard players remove #temp Time 1
execute if score #temp Time matches 1.. positioned ^ ^ ^1 run function luigis_mansion_dark_moon:entities/flashlight/remove_light/7