scoreboard players add @s[scores={DeathTime=..60}] DeathTime 1
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players add @s DeathTime 1
data merge entity @s[scores={DeathTime=1}] {Pose:{Head:[0.0f,0.01f,0.0f]}}
execute if entity @s[scores={DeathTime=1..30}] run teleport @s ^0.11 ^-2.34 ^ ~ ~
execute at @s[scores={DeathTime=31..40}] run teleport @s ^0.05 ^-0.05 ^
execute store result score #temp Time run data get entity @s Pose.Head[2] 1
execute if entity @s[scores={DeathTime=31..40}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 8
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={DeathTime=31..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
scoreboard players reset #temp Time