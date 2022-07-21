execute if entity @a[limit=1,tag=stunner,distance=..2] run scoreboard players set @s[tag=stunnable] StunTime 40
execute if entity @a[limit=1,tag=stunner,distance=2..3] run scoreboard players set @s[tag=stunnable] StunTime 45
execute if entity @a[limit=1,tag=stunner,distance=3..4] run scoreboard players set @s[tag=stunnable] StunTime 40
execute if entity @a[limit=1,tag=stunner,distance=4..5] run scoreboard players set @s[tag=stunnable] StunTime 35
execute if entity @a[limit=1,tag=stunner,distance=5..] run scoreboard players set @s[tag=stunnable] StunTime 30
execute if entity @s[tag=stunnable,tag=!no_switch_target_on_stun] at @a[limit=1,tag=stunner] run function luigis_mansion_dark_moon:entities/ghost/set_target
execute positioned as @s facing entity @a[limit=1,tag=stunner] feet run teleport @s[tag=stunnable] ~ ~ ~ ~ 0
tag @s[tag=stunnable] add newly_stunned
tag @s[tag=flash_killable] add flashed