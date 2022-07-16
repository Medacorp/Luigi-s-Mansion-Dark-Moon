execute if entity @s[tag=polterpup,tag=!story_polterpup] run scoreboard players add @a[tag=me,limit=1] PowerGauge 1
execute if entity @s[tag=big_polterpup] run scoreboard players add @a[tag=me,limit=1,scores={PowerGauge=1}] PowerGauge 1
execute if entity @a[tag=me,limit=1,scores={PowerGauge=1,PowerGaugeUsage=1..}] run scoreboard players set #gold_coin Selected 3
execute if entity @a[tag=me,limit=1,scores={PowerGauge=2,PowerGaugeUsage=1..}] run scoreboard players set #gold_bar Selected 1
execute if entity @a[tag=me,limit=1,scores={PowerGauge=3,PowerGaugeUsage=1..}] run scoreboard players set #gold_bar Selected 3
execute if entity @a[tag=me,limit=1,scores={PowerGauge=4,PowerGaugeUsage=1..}] run scoreboard players set #gold_bar Selected 5
execute if entity @s[tag=polterpup,tag=!story_polterpup] run scoreboard players remove @a[tag=me,limit=1] PowerGauge 1
execute if entity @s[tag=big_polterpup] run scoreboard players remove @a[tag=me,limit=1] PowerGauge 1
execute if entity @a[tag=me,limit=1,scores={GhostCount=2..}] run scoreboard players add #gold_bar Selected 1
execute if entity @a[tag=me,limit=1,scores={Health=..99}] if predicate luigis_mansion_dark_moon:turn_loot_to_heart run function luigis_mansion_dark_moon:entities/ghost/turn_loot_to_heart
function luigis_mansion_dark_moon:entities/ghost/drop_loot
tag @a[tag=me,limit=1] add capturing_ghost