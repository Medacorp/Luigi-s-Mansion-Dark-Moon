teleport @s ^-0.4 ^-1 ^
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[-40.0f,0.0f,20.0f]}}
data merge entity @s[scores={AnimationProg=40}] {Pose:{Head:[-40.0f,0.0f,20.0f]}}
scoreboard players set @s[scores={AnimationProg=40..}] AnimationProg 0