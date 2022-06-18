scoreboard objectives add ActionTime dummy
scoreboard objectives add AnimationProg dummy
scoreboard objectives add Constants dummy
scoreboard objectives add Damage dummy
scoreboard objectives add DarkLightTime dummy
scoreboard objectives add DeathTime dummy
scoreboard objectives add Dialog dummy
scoreboard objectives add ForcedDamage dummy
scoreboard objectives add GhostNr dummy
scoreboard objectives add GradualMusic dummy
scoreboard objectives add Health dummy
scoreboard objectives add HomeX dummy
scoreboard objectives add HomeY dummy
scoreboard objectives add HomeZ dummy
scoreboard objectives add HomeRot dummy
scoreboard objectives add HomeRotX dummy
scoreboard objectives add HomeRotY dummy
scoreboard objectives add LabChoice trigger
scoreboard objectives add ModelTime dummy
scoreboard objectives add Music dummy
scoreboard objectives add MusicType dummy
scoreboard objectives add ID dummy
scoreboard objectives add IncreaseAmount dummy
scoreboard objectives add Invulnerable dummy
scoreboard objectives add Jump minecraft.custom:minecraft.jump
scoreboard objectives add JumpHeight dummy
scoreboard objectives add LoadedChunks dummy
scoreboard objectives add Offline minecraft.custom:minecraft.leave_game
scoreboard objectives add OtherX dummy
scoreboard objectives add OtherY dummy
scoreboard objectives add OtherZ dummy
scoreboard objectives add PathStep dummy
scoreboard objectives add PassiveNr dummy
scoreboard objectives add PoltergustSound dummy
scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add PlayerRotation dummy
scoreboard objectives add PrevMusicType dummy
scoreboard objectives add PrevRoom dummy
scoreboard objectives add Range dummy
scoreboard objectives add Room dummy
scoreboard objectives add RotationDif dummy
scoreboard objectives add RotX dummy
scoreboard objectives add RotY dummy
scoreboard objectives add Run minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add Selected dummy
scoreboard objectives add SettingsChoice trigger
scoreboard objectives add Sneak minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add SneakTime minecraft.custom:minecraft.sneak_time
scoreboard objectives add Sound dummy
scoreboard objectives add StrobulbCharge dummy
scoreboard objectives add StunTime dummy
scoreboard objectives add Time dummy
scoreboard objectives add TotalDamage dummy
scoreboard objectives add UseItem minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add Walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add WalkOnWater minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add WalkUnderWater minecraft.custom:minecraft.walk_under_water_one_cm

scoreboard players set #-1 Constants -1
scoreboard players set #256 Constants 256
scoreboard players set #10000 Constants 10000

execute unless score #debug Selected matches 0..1 run scoreboard players set #debug Selected 0
execute unless score #global_player_names Selected matches 0..1 run scoreboard players set #global_player_names Selected 1

execute unless data storage luigis_mansion_dark_moon:data vault run function luigis_mansion_dark_moon:other/upgrade_path/newly_installed