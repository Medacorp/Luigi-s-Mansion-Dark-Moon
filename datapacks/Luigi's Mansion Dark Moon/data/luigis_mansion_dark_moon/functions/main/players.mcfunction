tag @s remove spectator
tag @s[gamemode=spectator] add spectator
execute unless block ~ ~ ~ minecraft:air{loaded:0b} unless block ~-48 ~ ~ minecraft:air{loaded:0b} unless block ~48 ~ ~ minecraft:air{loaded:0b} unless block ~ ~ ~-48 minecraft:air{loaded:0b} unless block ~ ~ ~48 minecraft:air{loaded:0b} unless block ~48 ~ ~48 minecraft:air{loaded:0b} unless block ~48 ~ ~-48 minecraft:air{loaded:0b} unless block ~-48 ~ ~48 minecraft:air{loaded:0b} unless block ~-48 ~ ~-48 minecraft:air{loaded:0b} run function luigis_mansion_dark_moon:main/loaded_chunks
tag @s[nbt={OnGround:1b},tag=!prevent_jump] remove prevented_jump
execute if entity @s[nbt={OnGround:0b},tag=!prevented_jump] unless block ~ ~ ~ #minecraft:climbable run function luigis_mansion_dark_moon:main/prevent_jump

execute if entity @s[tag=!joined] run function luigis_mansion_dark_moon:other/join_world
execute if entity @s[scores={Offline=1..}] run function luigis_mansion_dark_moon:other/log_on

scoreboard players operation #temp Room = @s Room
execute as @e if score #temp Room = @s Room run tag @s add same_room
scoreboard players reset #temp Room

execute unless entity @s[scores={SettingsChoice=0}] run function luigis_mansion_dark_moon:settings/menu
execute if entity @s[tag=!spectator] run function luigis_mansion_dark_moon:entities/player/tick

scoreboard players set @s UseItem 0
scoreboard players set @s Jump 0
execute store result score @s JumpHeight run data get entity @s Pos[1] 100
tag @s[tag=walking] remove walking
tag @s[scores={Walk=1..}] add walking
tag @s[scores={WalkOnWater=1..}] add walking
tag @s[scores={WalkUnderWater=1..}] add walking
execute if entity @s[nbt={OnGround:0b}] if block ~ ~-0.01 ~ #luigis_mansion_dark_moon:ghosts_ignore run tag @s add walking
scoreboard players set @s[scores={Walk=1..}] Walk 0
scoreboard players set @s[scores={WalkOnWater=1..}] WalkOnWater 0
scoreboard players set @s[scores={WalkUnderWater=1..}] WalkUnderWater 0
tag @s[tag=swimming] remove swimming
tag @s[scores={Swimming=1..}] add swimming
execute if block ~ ~ ~ minecraft:water if entity @s[nbt={FallFlying:0b}] positioned ~ ~1 ~ unless entity @s[dy=0] run tag @s add swimming
scoreboard players set @s[scores={Swimming=1..}] Swimming 0
tag @s[tag=running] remove running
tag @s[scores={Run=1..}] add running
scoreboard players set @s[scores={Run=1..}] Run 0
tag @s[tag=sneak_pos] remove sneak_pos
tag @s[scores={SneakTime=1..},tag=!looking_at_map] add sneak_pos
scoreboard players set @s[scores={SneakTime=1..}] SneakTime 0
tag @s[tag=sneaking] remove sneaking
tag @s[scores={Sneak=1..},tag=!looking_at_map] add sneaking
scoreboard players set @s[scores={Sneak=1..}] Sneak 0
tag @s[tag=walking,tag=sneak_pos] add sneaking
tag @s[tag=walking,tag=sneak_pos] remove walking

function luigis_mansion_dark_moon:other/music
scoreboard players remove @s[scores={PoltergustSound=1..}] PoltergustSound 1
scoreboard players remove @s[scores={Sound=1..}] Sound 1

scoreboard players operation @s OtherX = @s PosX
scoreboard players operation @s OtherY = @s PosY
scoreboard players operation @s OtherZ = @s PosZ
execute store result score @s PosX run data get entity @s Pos[0] 100
execute store result score @s PosY run data get entity @s Pos[1] 100
execute store result score @s PosZ run data get entity @s Pos[2] 100
execute store result score @s RotY run data get entity @s Pos[0]
execute store result score @s RotX run data get entity @s Pos[1]
tag @s[tag=camera] add spectator
tag @e[tag=same_room] remove same_room