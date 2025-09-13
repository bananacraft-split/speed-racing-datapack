tag @s add Deletion
execute as @e[tag=lbf,type=minecraft:text_display] if score @s TRACK = @e[tag=Deletion,limit=1] TRACK if score @s TIME > @e[tag=Deletion,limit=1] TIME at @s run tp @s ~ ~-0.3 ~
kill @s