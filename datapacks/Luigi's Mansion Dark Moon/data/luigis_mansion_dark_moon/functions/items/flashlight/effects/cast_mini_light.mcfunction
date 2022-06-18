execute positioned ~ ~1 ~ positioned ^ ^ ^0.8 if block ~ ~ ~ #luigis_mansion_dark_moon:flashlight_path run summon minecraft:marker ~ ~ ~ {Tags:["flashlight","new"]}
execute positioned ~ ~1 ~ run teleport @e[type=minecraft:marker,tag=flashlight,tag=new,limit=1] ~ ~ ~ ~ ~
execute run scoreboard players operation @e[type=minecraft:marker,tag=flashlight,tag=new,limit=1] Room = @s Room
execute as @e[type=minecraft:marker,tag=flashlight,tag=new,limit=1] store result score @s HomeRotX run data get entity @s Rotation[0] 100
execute as @e[type=minecraft:marker,tag=flashlight,tag=new,limit=1] store result score @s HomeRotY run data get entity @s Rotation[1] 100
execute as @e[type=minecraft:marker,tag=flashlight,tag=new,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[type=minecraft:marker,tag=flashlight,tag=new,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[type=minecraft:marker,tag=flashlight,tag=new,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
scoreboard players set @e[type=minecraft:marker,tag=flashlight,tag=new,limit=1] PathStep 1
execute run tag @e[type=minecraft:marker,tag=flashlight,tag=new,limit=1] remove new