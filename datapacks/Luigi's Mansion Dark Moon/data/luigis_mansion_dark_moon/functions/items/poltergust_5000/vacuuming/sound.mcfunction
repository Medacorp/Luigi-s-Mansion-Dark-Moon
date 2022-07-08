execute if entity @s[tag=!vacuuming] run playsound luigis_mansion_dark_moon:item.poltergust_5000.vacuuming_start player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=!vacuuming] PoltergustSound 20
execute if entity @s[tag=vacuuming,scores={PoltergustSound=0}] run playsound luigis_mansion_dark_moon:item.poltergust_5000.vacuuming player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=vacuuming,scores={PoltergustSound=0}] PoltergustSound 20