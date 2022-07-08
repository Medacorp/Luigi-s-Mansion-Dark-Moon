tag @s[tag=ghost,scores={StunTime=1..}] add hurt
execute if entity @s[tag=ghost,scores={StunTime=1..}] run function luigis_mansion_dark_moon:items/poltergust_5000/latch_onto_ghost
execute at @s[tag=poltergust_can_pull,tag=!poltergust_pulls] facing entity @a[tag=me,limit=1] feet run teleport @s ^ ^ ^0.1
tag @s[tag=poltergust_can_pull] add poltergust_pulls
tag @s[tag=furniture] add shake
execute if entity @s[tag=rolling_carpet] run function luigis_mansion_dark_moon:entities/rolling_carpet/poltergust_effect