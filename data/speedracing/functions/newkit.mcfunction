execute as @e[type=#speedracing:kit,sort=nearest,tag=!kit,distance=..2,limit=1] at @s run summon minecraft:interaction ~ ~ ~ {Tags:["kit","newkit"],width:0.65f,height:1.9f}
execute as @e[type=#speedracing:kit,sort=nearest,tag=!kit,distance=..2,limit=1] run tag @s add kit
execute as @e[type=#speedracing:kit,sort=nearest,tag=!kit,distance=..2,limit=1] run data modify entity @s NoGravity set value 1b
execute as @e[type=interaction,tag=newkit,tag=kit] at @s run tp @s ~ ~0.01 ~
execute as @e[type=interaction,tag=newkit,tag=kit] store result score @s kit run data get storage var LastKitId
execute as @e[type=interaction,tag=newkit,tag=kit] run scoreboard players operation @s kit += $1 CONST
execute as @e[type=interaction,tag=newkit,tag=kit] store result storage var LastKitId int 1 run scoreboard players get @s kit
execute unless data storage options DefaultKit store result storage options DefaultKit int 1 run scoreboard players get @e[type=interaction,tag=newkit,tag=kit,limit=1] kit
execute as @e[type=interaction,tag=newkit,tag=kit] run tag @s remove newkit