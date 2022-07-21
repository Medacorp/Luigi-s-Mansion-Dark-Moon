tag @a[tag=target,limit=1] remove target
execute store result entity @s data.target run scoreboard players get @a[distance=0,limit=1] ID
tag @a[distance=0,limit=1] add target
