stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s GradualMusic 0
tag @s add death_animation
tag @s add spectator
scoreboard players operation #temp ID = @s ID
execute as @e[type=minecraft:armor_stand,tag=luigi_model,tag=!found_owner] if score @s ID = #temp ID run tag @s add this_luigi
scoreboard players set @e[tag=this_luigi] Time 0
scoreboard players set @e[tag=this_luigi] AnimationProg 0
tag @e[tag=this_luigi] remove this_luigi
scoreboard players reset #temp ID