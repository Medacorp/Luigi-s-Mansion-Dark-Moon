scoreboard players add @s[scores={DeathTime=..60}] DeathTime 1
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players add @s DeathTime 1
data merge entity @s[scores={DeathTime=1}] {Pose:{Head:[0.0f,0.01f,0.0f]}}
execute if entity @s[scores={DeathTime=1..30}] run teleport @s ^ ^-1.67 ^ ~ ~
data modify entity @s[scores={DeathTime=1..},nbt={ArmorItems:[{tag:{CustomModelData:0}}]}] ArmorItems[3].tag.CustomModelData set value 2
data modify entity @s[scores={DeathTime=1..},nbt={ArmorItems:[{tag:{CustomModelData:3}}]}] ArmorItems[3].tag.CustomModelData set value 5
execute at @s[scores={DeathTime=31..40}] run teleport @s ^0.125 ^-0.1 ^
execute store result score #temp Time run data get entity @s Pose.Head[2] 1
execute if entity @s[scores={DeathTime=31..40}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 11
scoreboard players reset #temp Time