scoreboard players set @s StunTime 2
data modify storage luigis_mansion_dark_moon:data ghost_list set value []
tag @s add me
execute as @a[tag=same_room] run function luigis_mansion_dark_moon:entities/ghost/find_vacuumers
tag @s remove me
data modify entity @s data.attacked_by set from storage luigis_mansion_dark_moon:data ghost_list
execute unless data storage luigis_mansion_dark_moon:data ghost_list[0] run scoreboard players set @s StunTime 0
execute unless data storage luigis_mansion_dark_moon:data ghost_list[0] run tag @s remove hurt
data remove storage luigis_mansion_dark_moon:data ghost_list
data modify entity @s[tag=!in_vacuum,tag=!dying] data.attacked_by set value []
execute if entity @s[tag=!in_vacuum,tag=!dying] run tag @a[tag=vacuuming_this_ghost] add lost_ghost
execute if entity @s[tag=!in_vacuum,tag=!dying] run tag @a[tag=vacuuming_this_ghost] remove vacuuming_this_ghost
execute if entity @s[tag=!grouchy_possessor,tag=!harsh_possessor,tag=!overset_possessor,tag=!shrewd_possessor,tag=!tough_possessor,tag=!king_boo] as @a[tag=lost_ghost] run function luigis_mansion_dark_moon:other/music/set/ghost_escaped
execute unless entity @s[tag=!grouchy_possessor,tag=!harsh_possessor,tag=!overset_possessor,tag=!shrewd_possessor,tag=!tough_possessor,tag=!king_boo] as @a[tag=lost_ghost] run function luigis_mansion_dark_moon:other/music/set/boss_escaped
tag @a remove lost_ghost
