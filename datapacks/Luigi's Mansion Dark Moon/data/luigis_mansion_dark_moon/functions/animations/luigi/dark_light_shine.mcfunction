scoreboard players operation @s DarkLightTime /= #2 Constants
execute store result score #temp Time run data get entity @s ArmorItems[3].tag.CustomModelData
execute if score #temp Time matches 10 run scoreboard players set #temp Time 12
execute if score #temp Time matches 11 run scoreboard players set #temp Time 112
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players operation #temp Time += @s DarkLightTime
scoreboard players reset #temp Time