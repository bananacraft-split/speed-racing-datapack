execute store result entity @s Pos[0] double 1 run data get storage var Track.Music.x
execute store result entity @s Pos[1] double 1 run data get storage var Track.Music.y
execute store result entity @s Pos[2] double 1 run data get storage var Track.Music.z
execute at @s run item replace block ~ ~ ~ container.0 from block ~ ~1 ~ container.1
kill @s