scoreboard players remove @s[scores={DeathTime=1..}] DeathTime 1
data merge entity @s[scores={DeathTime=1}] {Pose:{Head:[0.0f,0.01f,0.0f]}}
execute at @s[scores={DeathTime=11..50}] run teleport @s ^-0.03125 ^0.025 ^
data modify entity @s[scores={DeathTime=40},nbt={ArmorItems:[{tag:{CustomModelData:2}}]}] ArmorItems[3].tag.CustomModelData set value 0
data modify entity @s[scores={DeathTime=40},nbt={ArmorItems:[{tag:{CustomModelData:5}}]}] ArmorItems[3].tag.CustomModelData set value 3
execute store result score #temp Time run data get entity @s Pose.Head[1] 1
execute if entity @s[scores={DeathTime=1..15}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={DeathTime=26..40}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 4
execute store result score #temp Time run data get entity @s Pose.Head[2] 100
execute if entity @s[scores={DeathTime=11..50}] store result entity @s Pose.Head[2] float 0.01 run scoreboard players remove #temp Time 275
scoreboard players reset #temp Time