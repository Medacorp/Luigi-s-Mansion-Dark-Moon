execute if entity @a[limit=1,tag=stunner,distance=..2] run scoreboard players set @s[tag=stunnable] StunTime 100
execute if entity @a[limit=1,tag=stunner,distance=2..3] run scoreboard players set @s[tag=stunnable] StunTime 90
execute if entity @a[limit=1,tag=stunner,distance=3..4] run scoreboard players set @s[tag=stunnable] StunTime 80
execute if entity @a[limit=1,tag=stunner,distance=4..5] run scoreboard players set @s[tag=stunnable] StunTime 70
execute if entity @a[limit=1,tag=stunner,distance=5..] run scoreboard players set @s[tag=stunnable] StunTime 60
execute positioned as @s facing entity @a[limit=1,tag=stunner] feet run teleport @s[tag=stunnable] ~ ~ ~ ~ 0
tag @s[tag=stunnable] add newly_stunned
tag @s[tag=flash_killable] add flashed