scoreboard players set @s Music 0
scoreboard players set @s GradualMusic 0
scoreboard players add @s[scores={MusicType=111..115}] MusicType 1
execute unless entity @s[scores={MusicType=111..116}] run scoreboard players set @s MusicType 111