scoreboard players set $CUT VAR 0
title @a[tag=RaceStart] times 2 16 2

summon marker ~ ~ ~ {Tags:["MusicMarker"]}
execute as @e[tag=MusicMarker,limit=1] run function speedracing:race_start/do_cutscene_music

# TODO: Options titles