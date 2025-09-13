clear @s
tag @s remove RaceInProgress
execute at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 100 1.2

scoreboard players set @s POSITION 1
execute at @s as @a if score @s TRACK = @p TRACK if score @s TIME < @p TIME run scoreboard players add @p POSITION 1
title @s times 10 100 10
title @s[scores={POSITION=1}] title {"text":"1st Place!","color":"gold"}
title @s[scores={POSITION=2}] title {"text":"2nd Place!","color":"gray"}
title @s[scores={POSITION=3}] title {"text":"3rd Place!","color":"#835C00"}
title @s[scores={POSITION=4..}] title [{"score":{"name":"@s","objective":"POSITION"},"color":"white"},"th Place!"]
execute if entity @s[scores={POSITION=1}] run tellraw @a [{"selector":"@s"}," finished in ",{"text":"1st Place","color":"gold"},", after ",{"score":{"name":"@s","objective":"MINUTES2"}},{"score":{"name":"@s","objective":"MINUTES1"}},":",{"score":{"name":"@s","objective":"SECONDS2"}},{"score":{"name":"@s","objective":"SECONDS1"}},":",{"score":{"name":"@s","objective":"PARTIAL2"}},{"score":{"name":"@s","objective":"PARTIAL1"}}]
execute if entity @s[scores={POSITION=2}] run tellraw @a [{"selector":"@s"}," finished in ",{"text":"2nd Place","color":"gray"},", after ",{"score":{"name":"@s","objective":"MINUTES2"}},{"score":{"name":"@s","objective":"MINUTES1"}},":",{"score":{"name":"@s","objective":"SECONDS2"}},{"score":{"name":"@s","objective":"SECONDS1"}},":",{"score":{"name":"@s","objective":"PARTIAL2"}},{"score":{"name":"@s","objective":"PARTIAL1"}}]
execute if entity @s[scores={POSITION=3}] run tellraw @a [{"selector":"@s"}," finished in ",{"text":"3rd Place","color":"#835C00"},", after ",{"score":{"name":"@s","objective":"MINUTES2"}},{"score":{"name":"@s","objective":"MINUTES1"}},":",{"score":{"name":"@s","objective":"SECONDS2"}},{"score":{"name":"@s","objective":"SECONDS1"}},":",{"score":{"name":"@s","objective":"PARTIAL2"}},{"score":{"name":"@s","objective":"PARTIAL1"}}]
execute if entity @s[scores={POSITION=4..}] run tellraw @a [{"selector":"@s"}," finished in ",{"score":{"name":"@s","objective":"POSITION"},"color":"white"},"th Place, after ",{"score":{"name":"@s","objective":"MINUTES2"}},{"score":{"name":"@s","objective":"MINUTES1"}},":",{"score":{"name":"@s","objective":"SECONDS2"}},{"score":{"name":"@s","objective":"SECONDS1"}},":",{"score":{"name":"@s","objective":"PARTIAL2"}},{"score":{"name":"@s","objective":"PARTIAL1"}}]

execute if data storage options {200CC:0b} at @s as @e[type=minecraft:text_display,tag=lbs] if score @s ID = @p ID if score @s TRACK = @p TRACK if score @s TIME > @p TIME run function speedracing:zzzprivate/leaderboard/delete_leaderboard_slow
execute if data storage options {200CC:0b} at @s as @e[type=minecraft:text_display,tag=lbs] if score @s ID = @p ID if score @s TRACK = @p TRACK run tag @p add skip
execute if data storage options {200CC:0b} unless entity @s[tag=skip] run function speedracing:zzzprivate/leaderboard/make_leaderboard_slow

execute if data storage options {200CC:1b} at @s as @e[type=minecraft:text_display,tag=lbf] if score @s ID = @p ID if score @s TRACK = @p TRACK if score @s TIME > @p TIME run function speedracing:zzzprivate/leaderboard/delete_leaderboard_fast
execute if data storage options {200CC:1b} at @s as @e[type=minecraft:text_display,tag=lbf] if score @s ID = @p ID if score @s TRACK = @p TRACK run tag @p add skip
execute if data storage options {200CC:1b} unless entity @s[tag=skip] run function speedracing:zzzprivate/leaderboard/make_leaderboard_fast

tag @s[tag=skip] remove skip
gamemode spectator
tag @s add spec