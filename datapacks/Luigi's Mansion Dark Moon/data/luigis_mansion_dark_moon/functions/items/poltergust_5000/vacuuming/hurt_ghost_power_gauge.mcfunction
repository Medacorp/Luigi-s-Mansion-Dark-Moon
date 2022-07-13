tag @s add is_pulled
tag @a[tag=me,limit=1] add is_pulling
execute if entity @a[tag=me,scores={PowerGauge=1},limit=1] run function luigis_mansion_dark_moon:entities/ghost/hurt_power_gauge_1
execute if entity @a[tag=me,scores={PowerGauge=2},limit=1] run function luigis_mansion_dark_moon:entities/ghost/hurt_power_gauge_2
execute if entity @a[tag=me,scores={PowerGauge=3},limit=1] run function luigis_mansion_dark_moon:entities/ghost/hurt_power_gauge_3
scoreboard players set @a[tag=me,scores={Sound=0}] Sound 10
tag @a[tag=me,limit=1] add no_power_gauge_decrease