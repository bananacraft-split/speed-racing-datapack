scoreboard players operation D TEMP = @s ID
execute as @a if score D TEMP = @e[type=marker,tag=EnderTP,scores={TIME=..0},limit=1,sort=nearest] ID run tag @s add Teleporting
execute at @s rotated as @s run tp @a[tag=Teleporting] ~ ~ ~ ~ ~
scoreboard players operation @a[tag=Teleporting] CP = @s CP
tag @a[tag=Teleporting] remove Teleporting
kill @s