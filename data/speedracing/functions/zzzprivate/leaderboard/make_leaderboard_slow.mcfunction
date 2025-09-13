tag @s add GettingNewLeaderboardSlow
execute as @a[tag=GettingNewLeaderboardSlow] at @s as @e[type=marker,tag=lb] if score @s TRACK = @p TRACK at @s run summon minecraft:text_display ~ ~ ~ {alignment:"center",text:'[{"selector":"@a[tag=GettingNewLeaderboardSlow]","color":"gold"},{"text":" - ","color":"gold"},{"score":{"name":"@a[tag=GettingNewLeaderboardSlow]","objective":"MINUTES2"},"color":"gold"},{"score":{"name":"@a[tag=GettingNewLeaderboardSlow]","objective":"MINUTES1"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@a[tag=GettingNewLeaderboardSlow]","objective":"SECONDS2"},"color":"gold"},{"score":{"name":"@a[tag=GettingNewLeaderboardSlow]","objective":"SECONDS1"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@a[tag=GettingNewLeaderboardSlow]","objective":"PARTIAL2"},"color":"gold"},{"score":{"name":"@a[tag=GettingNewLeaderboardSlow]","objective":"PARTIAL1"},"color":"gold"}]',Tags:["lbs","newS","LB"],Rotation:[180f,0f]}
tag @a[tag=GettingNewLeaderboardSlow] remove GettingNewLeaderboardSlow
execute at @s as @e[type=marker,tag=lb] if score @s TRACK = @p TRACK at @s rotated as @s run tp @e[tag=newS] ~ ~ ~ ~ ~
execute at @s as @e[type=text_display,tag=lbs] unless entity @s[tag=newS] if score @s TRACK = @p TRACK if score @s TIME > @p TIME at @s run tp @s ~ ~-0.3 ~
scoreboard players set @e[tag=newS] POSITION -580
execute at @s as @e[type=text_display,tag=lbs] unless entity @s[tag=newS] if score @s TRACK = @p TRACK if score @s TIME <= @p TIME at @s run scoreboard players remove @e[tag=newS] POSITION 3
execute as @e[tag=newS] store result entity @s Pos[1] double 0.1 run scoreboard players get @s POSITION
scoreboard players operation @e[tag=newS] TIME = @s TIME
scoreboard players operation @e[tag=newS] ID = @s ID
scoreboard players operation @e[tag=newS] TRACK = @s TRACK
tag @e[tag=newS] remove newS