# Initial Race Start functions
effect give @a[tag=RaceStart] minecraft:slowness 1 100 true
title @a[tag=RaceStart] times 10 40 10
scoreboard players reset @a[tag=RaceStart] TIME
execute as @a[tag=RaceStart] run gamemode spectator
tag @a[tag=RaceStart] add Lap1
scoreboard players set @a[tag=RaceStart] CP 1
scoreboard players set @a[tag=RaceStart] OLDCP 1

# Find track
data modify storage var temp_get_track set from storage tracks TrackData
function speedracing:load_selected_track
data modify storage var Track set from storage var temp_get_track[0]
data remove storage var temp_get_track