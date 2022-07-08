execute at @s[tag=poltergust_can_push,tag=!poltergust_pushes] facing entity @a[tag=me,limit=1] feet run teleport @s ^ ^ ^-0.1
tag @s[tag=poltergust_can_push] add poltergust_pushes
tag @s[tag=furniture] add shake
execute if entity @s[tag=rolling_carpet] run function luigis_mansion_dark_moon:entities/rolling_carpet/poltergust_effect