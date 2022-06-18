teleport @s 0 90 0 0 0
attribute @s minecraft:generic.max_health base set 100
effect give @s minecraft:instant_health 1 19 true
scoreboard players set @s ForcedDamage 0
scoreboard players set @s Health 100
scoreboard players set @s Damage 0
scoreboard players set @s TotalDamage 0
function luigis_mansion_dark_moon:other/music/set/silence
scoreboard players set @s PoltergustSound 0
scoreboard players set @s Sound 0
scoreboard players set @s Walk 0
scoreboard players set @s WalkOnWater 0
scoreboard players set @s WalkUnderWater 0
scoreboard players set @s Run 0
scoreboard players set @s Sneak 0
scoreboard players set @s SneakTime 0
scoreboard players set @s Room 0
scoreboard players set @s Dialog 0
gamemode adventure @s
title @s times 40 40 40
tag @s add joined
tag @s add fix_health
function luigis_mansion_dark_moon:other/save_luigi_color
function luigis_mansion_dark_moon:other/log_on