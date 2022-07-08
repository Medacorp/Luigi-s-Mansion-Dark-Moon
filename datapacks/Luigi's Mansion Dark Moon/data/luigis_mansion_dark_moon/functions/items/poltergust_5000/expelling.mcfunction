scoreboard players operation #temp Room = @s Room
scoreboard players operation #temp ID = @s ID
tag @s add me
summon minecraft:marker ~ ~ ~ {Tags:["interact","poltergust"]}
execute unless entity @e[tag=attached_to_poltergust,distance=..2.5,limit=1] run function luigis_mansion_dark_moon:items/poltergust_5000/expel
execute if entity @e[tag=attached_to_poltergust,distance=..2.5,limit=1] run function luigis_mansion_dark_moon:items/poltergust_5000/blow
kill @e[type=minecraft:marker,tag=interact,limit=1]
tag @s add was_clogged
tag @s remove vacuuming
scoreboard players reset #temp Room
scoreboard players reset #temp ID
tag @s remove me