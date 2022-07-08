execute unless entity @s[scores={Health=1..}] run tag @a[tag=me,limit=1] add is_pulling
execute if entity @a[tag=me,distance=..0.95,limit=1,scores={PowerGaugeUsage=1..}] at @s run function luigis_mansion_dark_moon:items/poltergust_5000/vacuuming/hurt_ghost_power_gauge
execute if entity @a[tag=me,distance=..0.95,limit=1,scores={PowerGaugeUsage=1..}] unless entity @a[tag=me,limit=1,tag=!poltergust_2x,tag=!poltergust_x3] at @s run function luigis_mansion_dark_moon:items/poltergust_5000/vacuuming/hurt_ghost_power_gauge
execute if entity @a[tag=me,distance=..0.95,limit=1,scores={PowerGaugeUsage=1..},tag=poltergust_x3] at @s run function luigis_mansion_dark_moon:items/poltergust_5000/vacuuming/hurt_ghost_power_gauge
execute at @e[type=minecraft:marker,tag=position,limit=1] facing entity @s feet rotated ~ 0 positioned ^ ^ ^-1 if entity @a[tag=me,distance=..0.95,limit=1,scores={PowerGaugeUsage=0}] at @s run function luigis_mansion_dark_moon:items/poltergust_5000/vacuuming/hurt_ghost
execute at @e[type=minecraft:marker,tag=position,limit=1] facing entity @s feet rotated ~ 0 positioned ^ ^ ^-1 if entity @a[tag=me,distance=..0.95,limit=1,scores={PowerGaugeUsage=0}] at @s unless entity @a[tag=me,limit=1,tag=!poltergust_2x,tag=!poltergust_x3] run function luigis_mansion_dark_moon:items/poltergust_5000/vacuuming/hurt_ghost
execute at @e[type=minecraft:marker,tag=position,limit=1] facing entity @s feet rotated ~ 0 positioned ^ ^ ^-1 if entity @a[tag=me,distance=..0.95,limit=1,scores={PowerGaugeUsage=0},tag=poltergust_x3] at @s run function luigis_mansion_dark_moon:items/poltergust_5000/vacuuming/hurt_ghost
execute rotated as @a[tag=me,limit=1] positioned ^ ^ ^0.5 facing entity @s feet run function luigis_mansion_dark_moon:items/poltergust_5000/vacuuming/ghost_step
scoreboard players reset #temp Steps
tag @s remove being_vacuumed
execute if entity @s[scores={Health=..0}] run function luigis_mansion_dark_moon:items/poltergust_5000/drop_loot