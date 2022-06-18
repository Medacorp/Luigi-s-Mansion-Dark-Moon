execute if entity @s[tag=!strong] run function luigis_mansion_dark_moon:spawn_entities/greenie
execute if entity @s[tag=!strong] run tag @e[tag=greenie,distance=..0.1,limit=1] add mummy_spawn
execute if entity @s[tag=strong] run function luigis_mansion_dark_moon:spawn_entities/strong_greenie
execute if entity @s[tag=strong] run tag @e[tag=strong_greenie,distance=..0.1,limit=1] add mummy_spawn