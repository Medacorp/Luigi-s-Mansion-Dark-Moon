execute at @s unless entity @e[tag=ghost,tag=being_vacuumed,distance=..5,limit=1] facing entity @e[tag=ghost,tag=being_vacuumed,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^0.2
execute unless block ^ ^ ^-0.6 #luigis_mansion_dark_moon:all_ignore unless block ^ ^ ^-0.6 #minecraft:slabs[type=bottom] run teleport @s ^ ^ ^0.2
execute at @s unless block ~0.4 ~ ~ #luigis_mansion_dark_moon:all_ignore unless block ~0.4 ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~-0.2 ~ ~
execute at @s unless block ~-0.4 ~ ~ #luigis_mansion_dark_moon:all_ignore unless block ~-0.4 ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~0.2 ~ ~
execute at @s unless block ~ ~ ~0.4 #luigis_mansion_dark_moon:all_ignore unless block ~ ~ ~0.4 #minecraft:slabs[type=bottom] run teleport @s ~ ~ ~-0.2
execute at @s unless block ~ ~ ~-0.4 #luigis_mansion_dark_moon:all_ignore unless block ~ ~ ~-0.4 #minecraft:slabs[type=bottom] run teleport @s ~ ~ ~0.2
execute at @s unless block ^ ^1 ^-0.6 #luigis_mansion_dark_moon:all_ignore run teleport @s ^ ^ ^0.2
execute at @s unless block ~0.4 ~1 ~ #luigis_mansion_dark_moon:all_ignore run teleport @s ~-0.2 ~ ~
execute at @s unless block ~-0.4 ~1 ~ #luigis_mansion_dark_moon:all_ignore run teleport @s ~0.2 ~ ~
execute at @s unless block ~ ~1 ~0.4 #luigis_mansion_dark_moon:all_ignore run teleport @s ~ ~ ~-0.2
execute at @s unless block ~ ~1 ~-0.4 #luigis_mansion_dark_moon:all_ignore run teleport @s ~ ~ ~0.2
function luigis_mansion_dark_moon:items/poltergust_5000/vacuuming/sound