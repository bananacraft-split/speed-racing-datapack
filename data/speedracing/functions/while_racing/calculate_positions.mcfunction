execute as @a[tag=RaceInProgress] run function speedracing:while_racing/calculate_distances

scoreboard players set @a[tag=RaceInProgress] POS 1
execute as @a[tag=RaceInProgress] at @s as @a if score @s TRACK = @p TRACK if score @s CP > @p CP run scoreboard players add @p POS 1
execute as @a[tag=RaceInProgress] at @s as @a if score @s TRACK = @p TRACK if score @s CP = @p CP if score @s DIST > @p DIST run scoreboard players add @p POS 1
execute as @a store result score @s Level run xp query @s levels
execute as @a if score @s Level < @s POS run xp add @s 1 levels
execute as @a if score @s Level > @s POS run xp add @s -1 levels

execute as @a[tag=RaceInProgress,scores={NEXTD=0..}] at @e[tag=RootEntity,limit=1] run function speedracing:while_racing/new_cp
tag @e[type=marker,tag=LapTime,tag=newlt] remove newlt