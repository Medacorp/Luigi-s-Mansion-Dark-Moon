execute if block ^ ^ ^0.6 #luigis_mansion_dark_moon:ghosts_ignore if block ^ ^1 ^0.6 #luigis_mansion_dark_moon:ghosts_ignore run teleport @s ^ ^ ^0.05
scoreboard players remove #temp Move 1
execute at @s if block ~ ~1 ~ #luigis_mansion_dark_moon:ghosts_ignore unless block ~ ~1.9 ~ #luigis_mansion_dark_moon:ghosts_ignore run teleport @s ~ ~-0.1 ~
execute at @s unless block ~ ~ ~ #luigis_mansion_dark_moon:ghosts_ignore if block ~ ~0.1 ~ #luigis_mansion_dark_moon:ghosts_ignore run teleport @s ~ ~0.1 ~
execute at @s unless block ~0.3 ~ ~ #luigis_mansion_dark_moon:ghosts_ignore if block ~ ~ ~ #luigis_mansion_dark_moon:ghosts_ignore run teleport @s ~-0.1 ~ ~
execute at @s unless block ~-0.3 ~ ~ #luigis_mansion_dark_moon:ghosts_ignore if block ~ ~ ~ #luigis_mansion_dark_moon:ghosts_ignore run teleport @s ~0.1 ~ ~
execute at @s unless block ~ ~ ~0.3 #luigis_mansion_dark_moon:ghosts_ignore if block ~ ~ ~ #luigis_mansion_dark_moon:ghosts_ignore run teleport @s ~ ~ ~-0.1
execute at @s unless block ~ ~ ~-0.3 #luigis_mansion_dark_moon:ghosts_ignore if block ~ ~ ~ #luigis_mansion_dark_moon:ghosts_ignore run teleport @s ~ ~ ~0.1
execute unless block ^ ^ ^0.6 #luigis_mansion_dark_moon:ghosts_ignore rotated ~ 0 unless block ^ ^ ^0.6 #luigis_mansion_dark_moon:ghosts_ignore run scoreboard players set #temp Move 0
execute unless block ^ ^1 ^0.6 #luigis_mansion_dark_moon:ghosts_ignore rotated ~ 0 unless block ^ ^ ^0.6 #luigis_mansion_dark_moon:ghosts_ignore run scoreboard players set #temp Move 0
execute if score #temp Move matches 1.. positioned as @s run function luigis_mansion_dark_moon:entities/ghost/pull_player_step