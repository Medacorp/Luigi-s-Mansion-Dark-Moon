teleport @s ^ ^-0.2 ^0.15
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.0f,0.01f],RightArm:[-70.0f,10.0f,0.01f],LeftArm:[-70.0f,-10.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=20}] {Pose:{Head:[0.0f,0.0f,0.01f],RightArm:[-70.0f,10.0f,0.01f],LeftArm:[-70.0f,-10.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProg=20..}] AnimationProg 0