stopsound @s[scores={GradualMusic=0}] music
execute unless score @s MusicType = @s PrevMusicType run function luigis_mansion_dark_moon:other/music/play/intro
execute if score @s MusicType = @s PrevMusicType run function luigis_mansion_dark_moon:other/music/play/loop
scoreboard players operation @s PrevMusicType = @s MusicType