scoreboard players add @s AnimationProg 2
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=1..8}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=9..24}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProg=25..32}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
data modify entity @s[scores={AnimationProg=32..}] Pose.Head[0] set value 0.001f
scoreboard players set @s[scores={AnimationProg=32..}] AnimationProg 0
scoreboard players reset #temp Time