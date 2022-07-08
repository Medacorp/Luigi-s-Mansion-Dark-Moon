scoreboard players remove @e[tag=attached_to_poltergust,distance=..2.5,sort=nearest,limit=1] BlowTime 1
tag @e[tag=attached_to_poltergust,distance=..2.5,sort=nearest,limit=1] add vacuumed
tag @e[tag=can_attach_to_poltergust,distance=..2.5,sort=nearest,limit=1] add attached_to_poltergust
execute if entity @s[tag=!was_clogged] run playsound luigis_mansion_dark_moon:item.poltergust_5000.catch_object player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=!was_clogged] PoltergustSound 5
execute if entity @s[tag=was_clogged,scores={PoltergustSound=0}] run playsound luigis_mansion_dark_moon:item.poltergust_5000.vacuuming_clogged player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=was_clogged,scores={PoltergustSound=0}] PoltergustSound 20
tag @s add was_clogged