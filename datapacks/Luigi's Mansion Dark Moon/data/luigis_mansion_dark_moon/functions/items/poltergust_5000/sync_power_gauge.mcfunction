execute if data storage luigis_mansion_dark_moon:data vault.upgrades{power_gauge_level:1} unless data storage luigis_mansion_dark_moon:data {selected_map:7} run scoreboard players set @s[scores={PowerGaugeCharge=41..}] PowerGaugeCharge 40
execute if data storage luigis_mansion_dark_moon:data vault.upgrades{power_gauge_level:2} unless data storage luigis_mansion_dark_moon:data {selected_map:7} run scoreboard players set @s[scores={PowerGaugeCharge=81..}] PowerGaugeCharge 80
execute if data storage luigis_mansion_dark_moon:data vault.upgrades{power_gauge_level:3} unless data storage luigis_mansion_dark_moon:data {selected_map:7} run scoreboard players set @s[scores={PowerGaugeCharge=121..}] PowerGaugeCharge 120
execute if data storage luigis_mansion_dark_moon:data scarescraper.upgrades{power_gauge_level:1} if data storage luigis_mansion_dark_moon:data {selected_map:7} run scoreboard players set @s[scores={PowerGaugeCharge=41..}] PowerGaugeCharge 40
execute if data storage luigis_mansion_dark_moon:data scarescraper.upgrades{power_gauge_level:2} if data storage luigis_mansion_dark_moon:data {selected_map:7} run scoreboard players set @s[scores={PowerGaugeCharge=81..}] PowerGaugeCharge 80
execute if data storage luigis_mansion_dark_moon:data scarescraper.upgrades{power_gauge_level:3} if data storage luigis_mansion_dark_moon:data {selected_map:7} run scoreboard players set @s[scores={PowerGaugeCharge=121..}] PowerGaugeCharge 120
scoreboard players operation @s PowerGauge = @s PowerGaugeCharge
scoreboard players operation @s PowerGauge /= #40 Constants
scoreboard players operation #temp PowerGaugeCharge = @s PowerGaugeCharge
scoreboard players operation #temp PowerGaugeCharge %= #40 Constants

experience set @s 63 levels
execute if score #temp PowerGaugeCharge matches 0 run experience set @s 0 points
execute if score #temp PowerGaugeCharge matches 1 run experience set @s 10 points
execute if score #temp PowerGaugeCharge matches 2 run experience set @s 20 points
execute if score #temp PowerGaugeCharge matches 3 run experience set @s 30 points
execute if score #temp PowerGaugeCharge matches 4 run experience set @s 40 points
execute if score #temp PowerGaugeCharge matches 5 run experience set @s 50 points
execute if score #temp PowerGaugeCharge matches 6 run experience set @s 60 points
execute if score #temp PowerGaugeCharge matches 7 run experience set @s 70 points
execute if score #temp PowerGaugeCharge matches 8 run experience set @s 80 points
execute if score #temp PowerGaugeCharge matches 9 run experience set @s 90 points
execute if score #temp PowerGaugeCharge matches 10 run experience set @s 100 points
execute if score #temp PowerGaugeCharge matches 11 run experience set @s 110 points
execute if score #temp PowerGaugeCharge matches 12 run experience set @s 120 points
execute if score #temp PowerGaugeCharge matches 13 run experience set @s 130 points
execute if score #temp PowerGaugeCharge matches 14 run experience set @s 140 points
execute if score #temp PowerGaugeCharge matches 15 run experience set @s 150 points
execute if score #temp PowerGaugeCharge matches 16 run experience set @s 160 points
execute if score #temp PowerGaugeCharge matches 17 run experience set @s 170 points
execute if score #temp PowerGaugeCharge matches 18 run experience set @s 180 points
execute if score #temp PowerGaugeCharge matches 19 run experience set @s 190 points
execute if score #temp PowerGaugeCharge matches 20 run experience set @s 200 points
execute if score #temp PowerGaugeCharge matches 21 run experience set @s 210 points
execute if score #temp PowerGaugeCharge matches 22 run experience set @s 220 points
execute if score #temp PowerGaugeCharge matches 23 run experience set @s 230 points
execute if score #temp PowerGaugeCharge matches 24 run experience set @s 240 points
execute if score #temp PowerGaugeCharge matches 25 run experience set @s 250 points
execute if score #temp PowerGaugeCharge matches 26 run experience set @s 260 points
execute if score #temp PowerGaugeCharge matches 27 run experience set @s 270 points
execute if score #temp PowerGaugeCharge matches 28 run experience set @s 280 points
execute if score #temp PowerGaugeCharge matches 29 run experience set @s 290 points
execute if score #temp PowerGaugeCharge matches 30 run experience set @s 300 points
execute if score #temp PowerGaugeCharge matches 31 run experience set @s 310 points
execute if score #temp PowerGaugeCharge matches 32 run experience set @s 320 points
execute if score #temp PowerGaugeCharge matches 33 run experience set @s 330 points
execute if score #temp PowerGaugeCharge matches 34 run experience set @s 340 points
execute if score #temp PowerGaugeCharge matches 35 run experience set @s 350 points
execute if score #temp PowerGaugeCharge matches 36 run experience set @s 360 points
execute if score #temp PowerGaugeCharge matches 37 run experience set @s 370 points
execute if score #temp PowerGaugeCharge matches 38 run experience set @s 380 points
execute if score #temp PowerGaugeCharge matches 39 run experience set @s 390 points
scoreboard players reset #temp PowerGaugeCharge
experience set @s[scores={PowerGauge=0}] 0 levels
experience set @s[scores={PowerGauge=1}] 1 levels
experience set @s[scores={PowerGauge=2}] 2 levels
experience set @s[scores={PowerGauge=3..}] 3 levels