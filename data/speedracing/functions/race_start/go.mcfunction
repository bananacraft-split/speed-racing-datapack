title @a[tag=RaceStart] times 5t 30t 5t
title @a[tag=RaceStart] title "GO!"
execute as @a[tag=RaceStart] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 2
execute as @e[tag=RootEntity,limit=1] at @s run data modify block ~ ~1 ~ auto set value 0b
execute as @e[tag=RootEntity,limit=1] at @s run data modify block ~ ~1 ~ auto set value 1b
# TODO: Give Lap 1 Items here
execute as @a[tag=RaceStart] run function speedracing:kit/givelap1items

tag @a[tag=RaceStart] add RaceInProgress
tag @a[tag=RaceStart] remove RaceStart