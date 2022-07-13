tag @s[scores={StunTime=0},tag=!hurt,tag=!flee] remove vulnerable
tag @s[scores={StunTime=0},tag=!hurt,tag=!flee] remove stunned
tag @s[scores={StunTime=1..}] add stunned
scoreboard players remove @s[scores={StunTime=1..}] StunTime 1
scoreboard players set @s[tag=hurt] StunTime 0