attribute @s minecraft:generic.max_health base set 100
effect give @s minecraft:instant_health 1 19 true
scoreboard players operation @s[scores={Health=1..,Invulnerable=0},tag=!fix_health] Health -= @s Damage
scoreboard players set @s[scores={Health=..0,Invulnerable=0},tag=!fix_health] Health 0
scoreboard players operation @s[scores={Health=1..,Invulnerable=0},tag=!fix_health] TotalDamage += @s Damage
scoreboard players operation @s[tag=!fix_health] LastTotalDamage = @s TotalDamage
scoreboard players set @s Damage 0
scoreboard players set @s ForcedDamage 0
scoreboard players set @s[scores={Invulnerable=0}] Invulnerable 60