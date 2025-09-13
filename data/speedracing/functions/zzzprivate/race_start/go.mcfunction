title @a[tag=RaceStart] times 5t 30t 5t
title @a[tag=RaceStart] title "GO!"
execute as @a[tag=RaceStart] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 2
execute as @e[tag=RootEntity,limit=1] at @s run data modify block ~ ~1 ~ auto set value 0b
execute as @e[tag=RootEntity,limit=1] at @s run data modify block ~ ~1 ~ auto set value 1b
execute as @a[tag=RaceStart] run function speedracing:zzzprivate/kit/givelap1items

tag @a[tag=RaceStart] add RaceInProgress
tag @a[tag=RaceStart] remove RaceStart

execute as @e[tag=RootEntity,limit=1] at @s run summon marker ~ ~ ~ {Tags:["MusicMarker"]}
execute as @e[tag=MusicMarker,limit=1] run function speedracing:zzzprivate/race_start/do_track_music