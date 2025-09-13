data modify entity @s Pos[0] set from storage var Track.Music.x
data modify entity @s Pos[1] set from storage var Track.Music.y
data modify entity @s Pos[2] set from storage var Track.Music.z
execute at @s run item replace block ~ ~ ~ container.0 from block ~ ~1 ~ container.0
kill @s