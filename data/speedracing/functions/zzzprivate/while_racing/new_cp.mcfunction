execute if entity @s[scores={POS=1}] unless entity @e[tag=newlt] run function speedracing:zzzprivate/while_racing/summon_new_lap_entity
execute if entity @s[scores={POS=1}] run scoreboard players set @s RTDELTA 0

execute if entity @s[scores={POS=2..}] run scoreboard players operation @s RTDELTA = @s TIME
execute if entity @s[scores={POS=2..}] at @s as @e[type=marker,tag=LapTime] if score @s TRACK = @p TRACK if score @s CP = @p CP run scoreboard players operation @p RTDELTA -= @s TIME

execute if entity @s[scores={CP=101}] run title @s title "Lap 2"
execute if entity @s[scores={CP=201}] run title @s title "Final Lap"
execute if entity @s[scores={CP=101}] run function speedracing:zzzprivate/kit/givelap2items
execute if entity @s[scores={CP=201}] run function speedracing:zzzprivate/kit/givelap3items
execute if entity @s[scores={CP=301}] run function speedracing:zzzprivate/while_racing/has_finished