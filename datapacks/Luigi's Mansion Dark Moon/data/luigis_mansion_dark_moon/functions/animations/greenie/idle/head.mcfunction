teleport @s ^ ^-1 ^
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,-2.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=8..11}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=28..31}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
data merge entity @s[scores={AnimationProg=40}] {Pose:{Head:[0.0f,-2.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProg=40..}] AnimationProg 0