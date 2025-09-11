# Initial Race Start functions
execute unless entity @e[tag=RootEntity] run return 0
effect give @a[tag=RaceStart] minecraft:slowness 1 100 true
title @a[tag=RaceStart] times 10 40 10
scoreboard players reset @a[tag=RaceStart] TIME
execute as @a[tag=RaceStart] run gamemode spectator
tag @a[tag=RaceStart] add Lap1
scoreboard players set @a[tag=RaceStart] CP 1
scoreboard players set @a[tag=RaceStart] OLDCP 1

# Find track
data modify storage var temp_get_track set from storage tracks TrackData
function speedracing:race_start/load_selected_track
data modify storage var Track set from storage var temp_get_track[0]
data remove storage var temp_get_track

execute as @e[tag=RootEntity,limit=1] at @s run summon marker ~ ~ ~ {Tags:["RaceStartTeleportMarker"]}
execute as @e[tag=RaceStartTeleportMarker,limit=1] run function speedracing:race_start/tp_players_to_track_start

execute store result score $TRACK VAR run data get storage var TrackId
execute as @a if score @s TRACK = $TRACK VAR run scoreboard players set @s TRACK 0
execute as @a[tag=RaceStart] run scoreboard players operation @s TRACK = $TRACK VAR
title @a[tag=RaceStart] title {"storage": "var","nbt": "Track.Name"}
execute store result score $DAYTIME VAR run data get storage var Track.DayTime
function speedracing:race_start/update_time
execute if data storage var Track.Weather.Clear run weather clear
execute if data storage var Track.Weather.Rain run weather rain
execute if data storage var Track.Weather.Thunder run weather thunder
kill @e[type=marker,tag=LapTime]
# Gate command blocks
execute as @e[tag=RootEntity,limit=1] at @s run setblock ~ ~ ~ command_block{TrackOutput:0b,auto:0b}
execute as @e[tag=RootEntity,limit=1] at @s run data modify block ~ ~ ~ Command set from storage var Track.Gate.Make

execute as @e[tag=RootEntity,limit=1] at @s run setblock ~ ~1 ~ command_block{TrackOutput:0b,auto:0b}
execute as @e[tag=RootEntity,limit=1] at @s run data modify block ~ ~1 ~ Command set from storage var Track.Gate.Destroy
#Schedule further commands
schedule function speedracing:race_start/start_cutscene 24
schedule function speedracing:race_start/mid_cutscene 64

schedule function speedracing:race_start/end_cutscene 144
schedule function speedracing:race_start/countdown_three 184
schedule function speedracing:race_start/countdown_two 204
schedule function speedracing:race_start/countdown_one 224
schedule function speedracing:race_start/go 244
