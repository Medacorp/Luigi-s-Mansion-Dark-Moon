execute at @s rotated ~ 0 run summon minecraft:marker ^ ^0.1 ^1 {Tags:["interact","manual","check"]}
execute as @e[tag=interact,tag=manual] at @s unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:light unless block ~ ~ ~ minecraft:barrier run function luigis_mansion_dark_moon:room/interactions
execute if entity @e[tag=interact,tag=manual,tag=can_interact,limit=1] run scoreboard players set @s InteractionTime 1
kill @e[tag=interact,tag=manual]