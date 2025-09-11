execute store result score @s X run data get entity @s Pos[0] 100
execute store result score @s Y run data get entity @s Pos[1] 100
execute store result score @s Z run data get entity @s Pos[2] 100
execute at @s as @e[tag=CPM] if score @s TRACK = @p TRACK if score @s CP = @p CP unless score @s PATH < @p PATH unless score @s PATH > @p PATH run tag @s add MyCurrentCheckpoint

scoreboard players operation @s X *= @e[tag=MyCurrentCheckpoint] X
scoreboard players operation @s Y *= @e[tag=MyCurrentCheckpoint] Y
scoreboard players operation @s Y *= @e[tag=MyCurrentCheckpoint] Z
scoreboard players operation @s DIST = @e[tag=MyCurrentCheckpoint] W
scoreboard players operation @s DIST += @s X
scoreboard players operation @s DIST += @s Y
scoreboard players operation @s DIST += @s Z

execute store result score @s X run data get entity @s Pos[0] 100
execute store result score @s Y run data get entity @s Pos[1] 100
execute store result score @s Z run data get entity @s Pos[2] 100

tag @e[tag=MyCurrentCheckpoint] remove MyCurrentCheckpoint
execute at @s as @e[tag=CPM] if score @s TRACK = @p TRACK if score @s OLDCP = @p CP unless score @s PATH < @p PATH unless score @s PATH > @p PATH run tag @s add MyCurrentCheckpoint
scoreboard players operation @s X *= @e[tag=MyCurrentCheckpoint] X
scoreboard players operation @s Y *= @e[tag=MyCurrentCheckpoint] Y
scoreboard players operation @s Y *= @e[tag=MyCurrentCheckpoint] Z
scoreboard players operation @s NEXTD = @e[tag=MyCurrentCheckpoint] W
scoreboard players operation @s NEXTD += @s X
scoreboard players operation @s NEXTD += @s Y
scoreboard players operation @s NEXTD += @s Z

execute if entity @s[scores={NEXTD=0..}] run scoreboard players operation @s DIST = @s NEXTD
execute if entity @s[scores={NEXTD=0..}] run scoreboard players operation @s CP = @e[tag=MyCurrentCheckpoint] CP
tag @e[tag=MyCurrentCheckpoint] remove MyCurrentCheckpoint