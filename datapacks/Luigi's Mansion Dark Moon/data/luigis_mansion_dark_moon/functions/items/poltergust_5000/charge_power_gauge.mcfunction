scoreboard players operation #temp2 PowerGauge = @s PowerGaugeCharge
scoreboard players operation #temp2 PowerGauge /= #40 Constants
execute if data storage luigis_mansion_dark_moon:data vault.upgrades{super_poltergust:0b} unless data storage luigis_mansion_dark_moon:data {selected_map:7} run scoreboard players add @s PowerGaugeCharge 2
execute if data storage luigis_mansion_dark_moon:data vault.upgrades{super_poltergust:1b} unless data storage luigis_mansion_dark_moon:data {selected_map:7} run scoreboard players add @s PowerGaugeCharge 4
execute if data storage luigis_mansion_dark_moon:data scarescraper.upgrades{suction:1} if data storage luigis_mansion_dark_moon:data {selected_map:7} run scoreboard players add @s PowerGaugeCharge 2
execute if data storage luigis_mansion_dark_moon:data scarescraper.upgrades{suction:2} if data storage luigis_mansion_dark_moon:data {selected_map:7} run scoreboard players add @s PowerGaugeCharge 3
execute if data storage luigis_mansion_dark_moon:data scarescraper.upgrades{suction:3} if data storage luigis_mansion_dark_moon:data {selected_map:7} run scoreboard players add @s PowerGaugeCharge 4
scoreboard players operation #temp PowerGauge = @s PowerGaugeCharge
scoreboard players operation #temp PowerGauge /= #40 Constants
execute if score #temp PowerGauge > #temp2 PowerGauge run function luigis_mansion_dark_moon:items/poltergust_5000/power_gauge_sound
scoreboard players reset #temp PowerGauge
scoreboard players reset #temp2 PowerGauge
tag @s add no_power_charge_decrease