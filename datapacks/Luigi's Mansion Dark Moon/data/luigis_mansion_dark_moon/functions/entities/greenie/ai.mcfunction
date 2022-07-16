tag @s[tag=newly_stunned] add vulnerable
tag @s[tag=hurt] add flee
scoreboard players add @s[tag=flee,tag=!hurt] ActionTime 1
tag @s[scores={ActionTime=40}] remove flee
scoreboard players reset @s[tag=!flee] ActionTime