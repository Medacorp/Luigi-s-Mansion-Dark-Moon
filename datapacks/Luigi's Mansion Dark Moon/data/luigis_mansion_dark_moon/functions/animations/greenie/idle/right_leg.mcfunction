teleport @s ^-0.15 ^-1.375 ^-0.1
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[20.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=40}] {Pose:{Head:[20.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProg=40..}] AnimationProg 0