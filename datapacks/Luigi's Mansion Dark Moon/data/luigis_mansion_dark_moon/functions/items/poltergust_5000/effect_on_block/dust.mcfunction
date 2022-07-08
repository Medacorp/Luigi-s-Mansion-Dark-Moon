execute if block ~ ~ ~ minecraft:air run particle minecraft:dust 0.7 0.7 0.7 0.5 ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute if block ~ ~ ~ minecraft:light run particle minecraft:dust 0.7 0.7 0.7 0.5 ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute if block ~ ~ ~ minecraft:water run particle minecraft:bubble ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute if block ~ ~ ~ minecraft:redstone_wall_torch[facing=east,lit=true] run setblock ~ ~ ~ minecraft:tripwire_hook[facing=east]
execute if block ~ ~ ~ minecraft:redstone_wall_torch[facing=north,lit=true] run setblock ~ ~ ~ minecraft:tripwire_hook[facing=north]
execute if block ~ ~ ~ minecraft:redstone_wall_torch[facing=south,lit=true] run setblock ~ ~ ~ minecraft:tripwire_hook[facing=south]
execute if block ~ ~ ~ minecraft:redstone_wall_torch[facing=west,lit=true] run setblock ~ ~ ~ minecraft:tripwire_hook[facing=west]
execute unless block ~ ~ ~ minecraft:air as @e[tag=interact,limit=1] run function luigis_mansion_dark_moon:items/poltergust_5000/interact