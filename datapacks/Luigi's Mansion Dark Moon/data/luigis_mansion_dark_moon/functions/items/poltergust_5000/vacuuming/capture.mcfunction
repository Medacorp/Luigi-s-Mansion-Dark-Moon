playsound luigis_mansion_dark_moon:item.poltergust_5000.catch player @a[tag=same_room] ~ ~ ~ 1
particle minecraft:dust 0.7 1 1 1 ~ ~ ~ 0.2 0.2 0.2 1 10
tag @s remove captured
tag @s[tag=!item] add dead
execute unless entity @s[tag=vacuumable] run scoreboard players set @a[tag=me,limit=1] Sound 20
execute as @a[tag=me,limit=1,tag=restorator] at @s rotated ~ 0 positioned ^ ^ ^-1 run function luigis_mansion_dark_moon:items/poltergust_5000/restorator_hearts