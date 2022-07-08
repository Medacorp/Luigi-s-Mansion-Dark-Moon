scoreboard players add @s YellTime 1
execute if entity @s[scores={YellTime=2}] run playsound luigis_mansion_dark_moon:entity.player.yell player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={YellTime=2}] run playsound luigis_mansion_dark_moon:entity.player.yell_mario player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={YellTime=2}] Sound 40
scoreboard players reset @s[scores={YellTime=42}] YellTime
function luigis_mansion_dark_moon:entities/player/animation/set/no_idle