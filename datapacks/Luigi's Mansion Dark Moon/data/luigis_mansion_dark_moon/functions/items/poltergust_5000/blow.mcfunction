scoreboard players add @e[tag=attached_to_poltergust,distance=..2.5,sort=nearest,limit=1] BlowTime 1
tag @e[tag=attached_to_poltergust,distance=..2.5,sort=nearest,limit=1] add blown
execute if entity @s[tag=!was_blowing] run playsound luigis_mansion_dark_moon:item.poltergust_5000.blowing_start player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=!was_blowing] PoltergustSound 5
execute if entity @s[tag=was_blowing,scores={PoltergustSound=0}] run playsound luigis_mansion_dark_moon:item.poltergust_5000.blowing player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=was_blowing,scores={PoltergustSound=0}] PoltergustSound 20
tag @s add was_blowing