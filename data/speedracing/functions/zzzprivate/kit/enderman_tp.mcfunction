tag @s add GettingTeleport
execute as @a[scores={CP=..300,},tag=RaceInProgress] unless entity @s[tag=GettingTeleport] if score @s POS = $ONE VAR if score @s TRACK = @a[tag=GettingTeleport,limit=1] TRACK run tag @s add PotentialTarget
tag @s remove GettingTeleport
tag @a[tag=PotentialTarget,sort=random,limit=1] add TeleportTarget
title @s times 0 20 0
tellraw @s ["Teleporting to", {"selector":"@a[tag=TeleportTarget]"}]
execute as @a[tag=TeleportTarget] at @s run summon marker ~ ~ ~ {Tags:["EnderTP","new"]}
execute as @a[tag=TeleportTarget] at @s rotated as @s run tp @e[tag=EnderTP,tag=new,type=marker] ~ ~ ~ ~ ~

# Copy scoreboard values to use
scoreboard players set @e[tag=EnderTP,tag=new,type=marker] TIME 20
scoreboard players operation @e[tag=EnderTP,tag=new,type=marker] ID = @s ID
scoreboard players operation @e[tag=EnderTP,tag=new,type=marker] CP = @a[tag=TGT] CP
tag @e[tag=EnderTP,tag=new,type=marker] remove new
tag @a[tag=PotentialTarget] remove PotentialTarget
tag @a[tag=TeleportTarget] remove TeleportTarget