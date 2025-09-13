execute if entity @a[tag=RaceStart] run tellraw @a[distance=..10] "Can't change settings while people are racing."
execute if entity @a[tag=RaceStart] run return 0
execute if entity @a[tag=RaceInProgress] run tellraw @a[distance=..10] "Can't change settings while people are racing."
execute if entity @a[tag=RaceInProgress] run return 0
data modify storage options Pvp set value 0b
tellraw @a "PVP is now disabled."
gamerule pvp false