scoreboard players set @s Offline 0
scoreboard players set @s Music 0
scoreboard players set @s GradualMusic 0
scoreboard players set @s PrevMusicType 0
scoreboard players set @s LoadedChunks 0
scoreboard players set @s SettingsChoice -1
scoreboard players reset @s ID
scoreboard players operation @s ID > @a ID
scoreboard players add @s ID 1
tag @s remove loaded_chunks
tag @s remove seen_room_name
execute if entity @a[name=Dhranios] run gamerule sendCommandFeedback true
execute unless entity @a[name=Dhranios] run gamerule sendCommandFeedback false