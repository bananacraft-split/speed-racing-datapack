# scoreboard players set $WANTEDTRACK VAR <track id>
# function speedracing:set_track
execute if entity @a[tag=RaceInProgress] run tellraw @a[distance=..5] "Cannot set track, people are racing."
execute if entity @a[tag=RaceInProgress] run return 0
execute if entity @a[tag=RaceStart] run tellraw @a[distance=..5] "Cannot set track, people are racing."
execute if entity @a[tag=RaceStart] run return 0

execute store result storage var TrackId int 1 run scoreboard players get $WANTEDTRACK VAR
data modify storage var temp_get_track set from storage tracks TrackData
function speedracing:race_start/load_selected_track
data modify storage var TrackProvisional set from storage var temp_get_track[0]
data remove storage var temp_get_track
tellraw @a ["Selected Track: ", {"storage": "var", "nbt": "TrackProvisional.Name"}]