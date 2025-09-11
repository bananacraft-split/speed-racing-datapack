execute store result score A TEMP run data get storage var temp_get_track[0].id
execute store result score B TEMP run data get storage var TrackId
execute unless score A TEMP = B TEMP run data remove storage var temp_get_track[0]
execute unless score A TEMP = B TEMP if data storage var temp_get_track[0] run function speedracing:race_start/load_selected_track