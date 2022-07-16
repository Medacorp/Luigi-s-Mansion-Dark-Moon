scoreboard players add @s DeathTime 1

execute if entity @s[scores={DeathTime=1}] run scoreboard players operation @s KillerID = @p[tag=vacuuming_this_ghost] ID

scoreboard players operation #temp KillerID = @s KillerID
execute as @a[tag=vacuuming_this_ghost] if score @s ID = #temp KillerID run tag @s add killer
execute if entity @s[scores={DeathTime=1}] unless entity @a[tag=killer,limit=1] run function luigis_mansion_dark_moon:entities/ghost/cancel_death
scoreboard players reset #temp KillerID
execute at @s facing entity @a[tag=killer,limit=1] feet run teleport @s ~ ~ ~ ~-180 ~
execute store result score #temp HomeRot run data get entity @s Rotation[1] 100
scoreboard players operation #temp HomeRot *= #-1 Constants
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #temp HomeRot
scoreboard players reset #temp HomeRot

execute at @s[scores={DeathTime=1..}] run teleport @s ^ ^ ^-0.4
tag @s[scores={DeathTime=1..}] add dying

execute at @s[scores={DeathTime=1},tag=!dead,tag=!remove_from_existence] run function luigis_mansion_dark_moon:entities/ghost/capture
execute at @s[scores={DeathTime=2..},tag=!dead,tag=!remove_from_existence] if entity @a[tag=killer,distance=..0.7] run tag @s add captured
tag @a[tag=killer,limit=1] remove killer

execute if entity @s[scores={KillerID=-2147483648..}] run data modify entity @s data.attacked_by set value [0]
execute if entity @s[scores={KillerID=-2147483648..}] store result entity @s data.attacked_by[0] int 1 run scoreboard players get @s KillerID