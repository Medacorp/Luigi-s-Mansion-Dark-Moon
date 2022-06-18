tag @s add this_luigi
scoreboard players operation #temp ID = @s ID
data modify storage luigis_mansion_dark_moon:data luigi set value {tags:[],gliding:0b,swimming:0b,invulnerable:0b,animation:0b,pulled:0,mainhand:{},offhand:{}}
data modify storage luigis_mansion_dark_moon:data luigi.tags set from entity @s Tags
data modify storage luigis_mansion_dark_moon:data luigi.gliding set from entity @s FallFlying
execute store result storage luigis_mansion_dark_moon:data luigi.swimming byte 1 if entity @s[tag=swimming]
execute store result storage luigis_mansion_dark_moon:data luigi.invulnerable byte 1 if entity @s[scores={Invulnerable=1..}]
execute store result storage luigis_mansion_dark_moon:data luigi.pulled byte 1 run scoreboard players get @s Pull
data modify storage luigis_mansion_dark_moon:data luigi.mainhand set from entity @s SelectedItem
data modify storage luigis_mansion_dark_moon:data luigi.offhand set from entity @s Inventory[{Slot:-106b}]
execute as @e[type=minecraft:armor_stand,tag=luigi_model,tag=!found_owner] if score @s ID = #temp ID run tag @s add this_luigi
execute as @e[type=minecraft:armor_stand,tag=this_luigi,tag=source,limit=1] run function luigis_mansion_dark_moon:animations/luigi/main
execute as @e[type=minecraft:armor_stand,tag=this_luigi,tag=!source] at @e[tag=this_luigi,tag=source,limit=1] run function luigis_mansion_dark_moon:animations/luigi/main
execute unless entity @e[tag=this_luigi,tag=source,limit=1] as @e[type=minecraft:armor_stand,tag=this_luigi,tag=!source] at @s run function luigis_mansion_dark_moon:animations/luigi/main
scoreboard players reset #temp ID
tag @s remove this_luigi
execute store result score #temp Time if entity @e[tag=this_luigi,tag=source,limit=1]
execute if score #temp Time matches 2.. run tag @e[tag=this_luigi] add dead
execute if entity @e[tag=this_luigi,limit=1] run scoreboard players set @s ModelTime 0
execute unless entity @e[tag=this_luigi,limit=1] run scoreboard players add @s ModelTime 1
execute unless entity @e[tag=this_luigi,limit=1] if entity @s[scores={ModelTime=10..}] run function luigis_mansion_dark_moon:spawn_entities/luigi
tag @e[tag=this_luigi] remove this_luigi