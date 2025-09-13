execute at @e[tag=RootEntity,limit=1] run summon marker ~ ~ ~ {Tags:["LapTime","newlt"]}
scoreboard players operation @e[type=marker,tag=LapTime,tag=newlt] TRACK = @s TRACK
scoreboard players operation @e[type=marker,tag=LapTime,tag=newlt] TIME = @s TIME
scoreboard players operation @e[type=marker,tag=LapTime,tag=newlt] CP = @s CP