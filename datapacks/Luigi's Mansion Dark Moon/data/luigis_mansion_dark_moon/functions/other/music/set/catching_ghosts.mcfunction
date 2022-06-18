scoreboard players set @s Music 0
scoreboard players set @s GradualMusic 0
scoreboard players set @s MusicType 32
execute if predicate luigis_mansion_dark_moon:50_50 run scoreboard players set @s MusicType 33
execute if predicate luigis_mansion_dark_moon:1_3 run scoreboard players set @s MusicType 34
execute if score @s MusicType = @s PrevMusicType run function luigis_mansion_dark_moon:other/music/set/catching_ghosts