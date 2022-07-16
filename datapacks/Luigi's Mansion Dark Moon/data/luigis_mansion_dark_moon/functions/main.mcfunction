function luigis_mansion_dark_moon:anti_cheating/scoreboard
execute as @a at @s run function luigis_mansion_dark_moon:main/players
execute as @e[type=!minecraft:player,tag=!model_piece] at @s run function luigis_mansion_dark_moon:main/non_players
execute as @e[type=!minecraft:player,tag=model_piece] at @s run function luigis_mansion_dark_moon:animations/model_piece
execute unless entity @a[tag=!loaded_chunks,limit=1] positioned as @a[tag=loaded_chunks,limit=1] run function luigis_mansion_dark_moon:room/tick
weather rain