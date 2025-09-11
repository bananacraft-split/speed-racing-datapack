data modify entity @s Pos[0] set from storage var Track.StartPos.x
data modify entity @s Pos[1] set from storage var Track.StartPos.y
data modify entity @s Pos[2] set from storage var Track.StartPos.z
data modify entity @s Rotation[0] set from storage var Track.StartPos.pitch
data modify entity @s Rotation[1] set from storage var Track.StartPos.yaw
execute as @s at @s rotated as @s run tp @a[tag=RaceStart] ~ ~ ~ ~ ~
kill @s