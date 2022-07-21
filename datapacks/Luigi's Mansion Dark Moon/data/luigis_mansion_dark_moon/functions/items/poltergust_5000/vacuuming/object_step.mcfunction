execute positioned ^ ^ ^ facing entity @a[tag=me,limit=1] feet run function luigis_mansion_dark_moon:items/poltergust_5000/vacuum
execute positioned ^ ^0.5 ^ facing entity @a[tag=me,limit=1] feet run function luigis_mansion_dark_moon:items/poltergust_5000/vacuum
execute positioned ^ ^-0.5 ^ facing entity @a[tag=me,limit=1] feet run function luigis_mansion_dark_moon:items/poltergust_5000/vacuum
execute positioned ^0.5 ^ ^ facing entity @a[tag=me,limit=1] feet run function luigis_mansion_dark_moon:items/poltergust_5000/vacuum
execute positioned ^-0.5 ^ ^ facing entity @a[tag=me,limit=1] feet run function luigis_mansion_dark_moon:items/poltergust_5000/vacuum
scoreboard players add #temp Steps 1
execute if entity @s[distance=..0.7] if score @s Steps > #temp Steps run scoreboard players operation @s Steps = #temp Steps
execute unless entity @s[distance=..0.7] if score #temp Steps matches 15 run function luigis_mansion_dark_moon:items/poltergust_5000/vacuuming/detach_object
execute unless entity @s[distance=..0.7] if score #temp Steps matches ..14 positioned ^ ^ ^0.5 run function luigis_mansion_dark_moon:items/poltergust_5000/vacuuming/object_step