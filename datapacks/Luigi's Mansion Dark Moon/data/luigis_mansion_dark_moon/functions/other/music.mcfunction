scoreboard players remove @s[scores={Music=1..}] Music 1
scoreboard players set @s[scores={Music=1..,GradualMusic=1..}] GradualMusic 0
scoreboard players remove @s[scores={GradualMusic=1..}] GradualMusic 1
execute if entity @s[scores={Music=0}] run function luigis_mansion_dark_moon:other/music/play