kill @e[tag=RootEntity]

summon marker ~ ~ ~ {Tags:["RootEntity"]}

execute as @e[tag=RootEntity,limit=1] at @s run setblock ~3 ~ ~4 glass
execute as @e[tag=RootEntity,limit=1] at @s run setblock ~3 ~ ~2 glass
execute as @e[tag=RootEntity,limit=1] at @s run setblock ~4 ~ ~3 glass
execute as @e[tag=RootEntity,limit=1] at @s run setblock ~2 ~ ~3 glass
execute as @e[tag=RootEntity,limit=1] at @s run setblock ~3 ~1 ~3 glass
execute as @e[tag=RootEntity,limit=1] at @s run setblock ~3 ~-1 ~3 glass
execute as @e[tag=RootEntity,limit=1] at @s run setblock ~3 ~ ~3 air