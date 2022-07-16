execute at @s[tag=!turned] run function luigis_mansion_dark_moon:entities/ghost/flee_initial_turn
execute at @s[tag=!wall,scores={Turn=0}] run function luigis_mansion_dark_moon:entities/ghost/flee_turn
execute at @s[tag=wall] run function luigis_mansion_dark_moon:entities/ghost/flee_wall
tag @s remove wall
scoreboard players set @s[tag=is_pulled] ErrorTime 0
scoreboard players add @s[tag=!is_pulled,scores={Health=1..}] ErrorTime 1
tag @s add me
execute if entity @s[scores={ErrorTime=10..}] as @a[tag=!spectator,tag=vacuuming_this_ghost,distance=3..] positioned as @s facing entity @e[tag=me,limit=1] feet rotated ~ 0 run function luigis_mansion_dark_moon:entities/ghost/pull_player
tag @s remove me
execute if entity @s[scores={ErrorTime=10..}] run scoreboard players set #temp MoveFlee 30
execute if score #temp MoveFlee matches 1.. at @s[tag=!ground_bound] rotated ~ 0 run function luigis_mansion_dark_moon:entities/ghost/move_flee
execute if score #temp MoveFlee matches 1.. at @s[tag=ground_bound] rotated ~ 0 run function luigis_mansion_dark_moon:entities/ghost/move_flee_ground_bound
execute if entity @a[tag=!spectator,tag=vacuuming_this_ghost,scores={PowerGaugeUsage=1..},limit=1] run scoreboard players set #temp Move -30
execute if score #temp Move matches ..-1 at @s[tag=!ground_bound] facing entity @p[tag=!spectator,tag=vacuuming_this_ghost,scores={PowerGaugeUsage=1..}] feet rotated ~ 0 run function luigis_mansion_dark_moon:entities/ghost/move_pulled
scoreboard players remove @s[scores={Turn=1..}] Turn 1
tag @s remove is_pulled
scoreboard players reset #temp MoveFlee