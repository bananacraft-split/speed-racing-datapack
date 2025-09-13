tag @s add GettingNewLeaderboardFast
execute as @a[tag=GettingNewLeaderboardFast] at @s as @e[type=marker,tag=lb] if score @s TRACK = @p TRACK at @s run summon minecraft:text_display ~ ~ ~ {alignment:"center",text:'[{"selector":"@a[tag=GettingNewLeaderboardFast]","color":"gold"},{"text":" - ","color":"gold"},{"score":{"name":"@a[tag=GettingNewLeaderboardFast]","objective":"MINUTES2"},"color":"gold"},{"score":{"name":"@a[tag=GettingNewLeaderboardFast]","objective":"MINUTES1"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@a[tag=GettingNewLeaderboardFast]","objective":"SECONDS2"},"color":"gold"},{"score":{"name":"@a[tag=GettingNewLeaderboardFast]","objective":"SECONDS1"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@a[tag=GettingNewLeaderboardFast]","objective":"PARTIAL2"},"color":"gold"},{"score":{"name":"@a[tag=GettingNewLeaderboardFast]","objective":"PARTIAL1"},"color":"gold"}]',Tags:["lbs","newF","LB"],Rotation:[180f,0f]}
tag @a[tag=GettingNewLeaderboardFast] remove GettingNewLeaderboardFast
execute at @s as @e[type=marker,tag=lb] if score @s TRACK = @p TRACK at @s rotated as @s run tp @e[tag=newF] ~ ~ ~ ~ ~
execute at @s as @e[type=text_display,tag=lbs] unless entity @s[tag=newF] if score @s TRACK = @p TRACK if score @s TIME > @p TIME at @s run tp @s ~ ~-0.3 ~
scoreboard players set @e[tag=newF] POSITION -572
execute at @s as @e[type=text_display,tag=lbs] unless entity @s[tag=newF] if score @s TRACK = @p TRACK if score @s TIME <= @p TIME at @s run scoreboard players add @e[tag=newF] POSITION 3
execute as @e[tag=newF] store result entity @s Pos[1] double 0.1 run scoreboard players get @s POSITION
scoreboard players operation @e[tag=newF] TIME = @s TIME
scoreboard players operation @e[tag=newF] ID = @s ID
scoreboard players operation @e[tag=newF] TRACK = @s TRACK
tag @e[tag=newF] remove newF