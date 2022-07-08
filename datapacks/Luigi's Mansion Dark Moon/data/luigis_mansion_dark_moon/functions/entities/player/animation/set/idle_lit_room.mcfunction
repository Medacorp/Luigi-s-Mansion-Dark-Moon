function luigis_mansion_dark_moon:entities/player/animation/set/none
tag @s add adjust_nose
execute if predicate luigis_mansion_dark_moon:50_50 run tag @s add scratch_chest
execute if predicate luigis_mansion_dark_moon:1_3 if data storage luigis_mansion_dark_moon:data {got_poltergust:1b} run tag @s add uncomfortable_poltergust
tag @s[tag=scratch_chest] remove adjust_nose
tag @s[tag=uncomfortable_poltergust] remove scratch_chest
tag @s add idle
scoreboard players set @s IdleTime -20