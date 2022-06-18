stopsound @s[scores={GradualMusic=0}] music
execute unless score @s MusicType = @s PrevMusicType run function luigis_mansion_dark_moon:other/music/play/intro
execute if score @s MusicType = @s PrevMusicType run function luigis_mansion_dark_moon:other/music/play/loop
scoreboard players operation @s PrevMusicType = @s MusicType
execute if score @s MusicType = @s PrevMusicType if entity @s[scores={Music=0,MusicType=32..34}] run function luigis_mansion_dark_moon:other/music/set/catching_ghosts