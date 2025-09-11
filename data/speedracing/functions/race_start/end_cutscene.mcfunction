execute as @e[tag=RootEntity,limit=1] at @s run summon marker ~ ~ ~ {Tags:["RaceStartTeleportMarker"]}
execute as @e[tag=RaceStartTeleportMarker,limit=1] run function speedracing:race_start/tp_players_to_track_start
execute as @a[tag=RaceStart] run gamemode adventure
execute as @a[sort=random,tag=RaceStart,limit=1] run tag @s add ST