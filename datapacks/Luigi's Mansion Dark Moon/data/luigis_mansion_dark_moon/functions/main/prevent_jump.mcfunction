summon minecraft:marker ~ ~ ~ {Tags:["teleport_target"]}
execute store result entity @e[type=minecraft:marker,tag=teleport_target,limit=1] Pos[1] double 0.01 run scoreboard players get @s JumpHeight
teleport @s ~ 0 ~
execute positioned as @e[type=minecraft:marker,tag=teleport_target,limit=1] run teleport @s ~ ~ ~
execute at @s align y unless block ~ ~ ~ #luigis_mansion_dark_moon:all_ignore if block ~ ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~0.5 ~
kill @e[type=minecraft:marker,tag=teleport_target,limit=1]
tag @s add prevented_jump