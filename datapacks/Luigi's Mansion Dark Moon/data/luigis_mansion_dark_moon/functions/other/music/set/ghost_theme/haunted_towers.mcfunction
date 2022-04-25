scoreboard players set @s Music 0
scoreboard players set @s GradualMusic 0
scoreboard players set @s MusicType 20
execute if predicate luigis_mansion_dark_moon:chance/50_50 run scoreboard players set @s MusicType 21
execute if predicate luigis_mansion_dark_moon:chance/1_3 run scoreboard players set @s MusicType 22