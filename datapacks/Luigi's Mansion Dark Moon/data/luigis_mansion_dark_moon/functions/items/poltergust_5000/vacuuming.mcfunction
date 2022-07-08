summon minecraft:marker ~ ~ ~ {Tags:["interact","vacuum","poltergust"]}
scoreboard players operation #temp Room = @s Room
scoreboard players operation #temp ID = @s ID
tag @s add me
tag @s remove capturing_ghost
scoreboard players set @s[tag=capturing_ghost] Invulnerable 2
execute as @e[tag=ghost,tag=same_room,scores={VulnerableTime=1..}] run function luigis_mansion_dark_moon:items/poltergust_5000/attacking_ghost
execute if score #temp GhostCount > @s GhostCount run scoreboard players operation @s GhostCount = #temp GhostCount
execute if score #temp GhostCount matches 1.. run function luigis_mansion_dark_moon:items/poltergust_5000/get_old_position
execute if score #temp GhostCount matches 1.. at @s rotated ~ 0 run function luigis_mansion_dark_moon:items/poltergust_5000/vacuuming/attack_ghost
execute if score #temp GhostCount matches 1.. run function luigis_mansion_dark_moon:items/poltergust_5000/face_ghost
execute if score #temp GhostCount matches 1.. as @e[tag=ghost,tag=being_vacuumed] run function luigis_mansion_dark_moon:items/poltergust_5000/catch_ghost
execute if score #temp GhostCount matches 1.. as @e[tag=ghost,tag=being_vacuumed] facing entity @s feet run function luigis_mansion_dark_moon:items/poltergust_5000/vacuuming/ghost
execute if score #temp GhostCount matches 1.. run scoreboard players set @s[tag=is_pulling] ErrorTime 0
execute if score #temp GhostCount matches 1.. run scoreboard players add @s[tag=!is_pulling] ErrorTime 1
execute if score #temp GhostCount matches 1.. if entity @s[scores={ErrorTime=10..}] run function luigis_mansion_dark_moon:items/poltergust_5000/vacuuming/get_dragged
execute unless score #temp GhostCount matches 1.. run tag @s remove made_error
execute unless score #temp GhostCount matches 1.. run scoreboard players set @s ErrorTime 0
execute unless score #temp GhostCount matches 1.. if entity @e[tag=can_attach_to_poltergust,distance=..2.5,sort=nearest,limit=1] run function luigis_mansion_dark_moon:items/poltergust_5000/vacuuming/get_clogged
execute unless score #temp GhostCount matches 1.. unless entity @e[tag=attached_to_poltergust,distance=..2.5,limit=1] run function luigis_mansion_dark_moon:items/poltergust_5000/vacuuming/default
execute if score #temp GhostCount matches 1.. run tag @s add vacuuming_ghost
execute if entity @s[tag=catch_portrait_ghost] as @a[tag=same_room,scores={Room=1..}] run function luigis_mansion_dark_moon:items/poltergust_5000/catching_ghost_music
execute if entity @s[tag=!catch_portrait_ghost,tag=catch_ghost] as @a[tag=same_room,scores={Room=1..}] run function luigis_mansion_dark_moon:items/poltergust_5000/catching_portrait_ghost_music
execute as @e[distance=..3,tag=captured,tag=!element_death] at @s run function luigis_mansion_dark_moon:items/poltergust_5000/vacuuming/capture
scoreboard players reset #temp GhostCount
scoreboard players reset #temp Room
scoreboard players reset #temp ID
tag @s remove was_blowing
tag @s add vacuuming
scoreboard players remove @s[tag=!no_power_gauge_decrease,tag=vacuuming_ghost] PowerGaugeCharge 1
scoreboard players set @s[tag=!vacuuming_ghost] PowerGaugeCharge 0
tag @s remove no_power_gauge_decrease
function luigis_mansion_dark_moon:items/poltergust_5000/sync_power_gauge
execute if entity @s[tag=hurt_entity,scores={PowerGauge=0}] run playsound luigis_mansion_dark_moon:item.poltergust_5000.damage hostile @a ~ ~ ~ 1 0.5
execute if entity @s[tag=hurt_entity,scores={PowerGauge=1}] run playsound luigis_mansion_dark_moon:item.poltergust_5000.damage hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=hurt_entity,scores={PowerGauge=2}] run playsound luigis_mansion_dark_moon:item.poltergust_5000.damage hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=hurt_entity,scores={PowerGauge=3}] run playsound luigis_mansion_dark_moon:item.poltergust_5000.damage hostile @a ~ ~ ~ 1 2
tag @s remove hurt_entity
tag @s remove me
kill @e[type=minecraft:marker,tag=interact,limit=1]
kill @e[type=minecraft:marker,tag=position,limit=1]