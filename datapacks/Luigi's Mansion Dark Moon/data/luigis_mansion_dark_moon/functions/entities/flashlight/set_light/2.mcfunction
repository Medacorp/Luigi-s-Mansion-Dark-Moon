fill ~ ~ ~ ~ ~ ~ minecraft:light[waterlogged=false,level=2] replace minecraft:air
fill ~ ~ ~ ~ ~ ~ minecraft:light[waterlogged=true,level=2] replace minecraft:water[level=0]
scoreboard players remove #temp Time 1
execute if score #temp Time matches 1.. positioned ^ ^ ^1 run function luigis_mansion_dark_moon:entities/flashlight/set_light/3