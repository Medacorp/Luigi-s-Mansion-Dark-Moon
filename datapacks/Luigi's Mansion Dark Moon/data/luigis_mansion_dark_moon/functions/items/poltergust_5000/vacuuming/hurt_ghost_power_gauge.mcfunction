tag @s add is_pulled
tag @a[tag=me,limit=1] add is_pulling
execute if data storage luigis_mansion_dark_moon:data vault.upgrades{super_poltergust:0b} unless data storage luigis_mansion_dark_moon:data {selected_map:7} run function luigis_mansion_dark_moon:entities/ghost/hurt_power_gauge
execute if data storage luigis_mansion_dark_moon:data vault.upgrades{super_poltergust:1b} unless data storage luigis_mansion_dark_moon:data {selected_map:7} run function luigis_mansion_dark_moon:entities/ghost/hurt_power_gauge_super_poltergust
execute if data storage luigis_mansion_dark_moon:data scarescraper.upgrades{suction:1} if data storage luigis_mansion_dark_moon:data {selected_map:7} run function luigis_mansion_dark_moon:entities/ghost/hurt_power_gauge
execute if data storage luigis_mansion_dark_moon:data scarescraper.upgrades{suction:2} if data storage luigis_mansion_dark_moon:data {selected_map:7} run function luigis_mansion_dark_moon:entities/ghost/hurt_power_gauge_suction_2
execute if data storage luigis_mansion_dark_moon:data scarescraper.upgrades{suction:3} if data storage luigis_mansion_dark_moon:data {selected_map:7} run function luigis_mansion_dark_moon:entities/ghost/hurt_power_gauge_super_poltergust
scoreboard players set @a[tag=me,scores={Sound=0}] Sound 10