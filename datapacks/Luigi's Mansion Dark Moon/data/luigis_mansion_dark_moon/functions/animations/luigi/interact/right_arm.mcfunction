scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..10}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 13
execute if entity @s[scores={AnimationProg=11..20}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 13
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=1..10}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=11..20}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=20}] AnimationProg 0