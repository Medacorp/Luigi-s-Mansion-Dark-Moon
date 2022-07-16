function luigis_mansion_dark_moon:entities/strong_hider/get_random_mass
execute store result score #temp Time run data get storage luigis_mansion_dark_moon:data ghost_caught.total
execute store result storage luigis_mansion_dark_moon:data ghost_caught.total int 1 if score #temp Time matches ..2147483646 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion_dark_moon:data ghost_caught.total_mass
execute store result storage luigis_mansion_dark_moon:data ghost_caught.total_mass int 1 if score #temp Time matches ..2147483646 run scoreboard players operation #temp Time += #mass Temp
execute store result storage luigis_mansion_dark_moon:data ghost_caught.total_mass int 1 if score #temp Time matches ..-1 run scoreboard players set #temp Time 2147483646
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion_dark_moon:data ghost_caught.ghosts.strong_hider.amount
execute store result storage luigis_mansion_dark_moon:data ghost_caught.ghosts.strong_hider.amount int 1 if score #temp Time matches ..2147483646 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion_dark_moon:data ghost_caught.ghosts.strong_hider.heaviest_mass
execute store result storage luigis_mansion_dark_moon:data ghost_caught.ghosts.strong_hider.heaviest_mass int 1 if score #temp Time matches ..2147483646 run scoreboard players operation #temp Time > #mass Temp
execute store result storage luigis_mansion_dark_moon:data ghost_caught.ghosts.strong_hider.heaviest_mass int 1 if score #temp Time matches ..-1 run scoreboard players set #temp Time 2147483646
scoreboard players reset #temp Time