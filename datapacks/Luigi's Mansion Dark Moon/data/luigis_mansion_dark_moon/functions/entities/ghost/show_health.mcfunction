scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=health_display] if score @s GhostNr = #temp GhostNr run tag @s add this_health_display
scoreboard players reset #temp GhostNr
scoreboard players operation #temp Health = @s Health
execute if entity @s[tag=!vulnerable,tag=spawned_health_display] run tag @e[tag=this_health_display,limit=1] add dead
execute if entity @s[tag=dying] run tag @e[tag=this_health_display,limit=1] add dead
execute if entity @s[tag=vulnerable] as @e[tag=this_health_display,limit=1] run function luigis_mansion_dark_moon:entities/ghost/update_health_display
execute if entity @s[tag=vulnerable,tag=!dying] unless entity @e[tag=this_health_display,limit=1] run function luigis_mansion_dark_moon:entities/ghost/spawn_health_display
tag @e remove this_health_display