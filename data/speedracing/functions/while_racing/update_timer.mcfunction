scoreboard players add @a[tag=RaceInProgress] TIME 1

execute as @a run scoreboard players operation @s PARTIAL1 = @s TIME
execute as @a run scoreboard players operation @s PARTIAL2 = @s PARTIAL1
execute as @a run scoreboard players operation @s PARTIAL1 %= $2 CONST
execute as @a run scoreboard players operation @s PARTIAL2 /= $2 CONST
execute as @a run scoreboard players operation @s SECONDS1 = @s PARTIAL2
execute as @a run scoreboard players operation @s PARTIAL2 %= $10 CONST
execute as @a run scoreboard players operation @s SECONDS1 /= $10 CONST
execute as @a run scoreboard players operation @s SECONDS2 = @s SECONDS1
execute as @a run scoreboard players operation @s SECONDS1 %= $10 CONST
execute as @a run scoreboard players operation @s SECONDS2 /= $10 CONST
execute as @a run scoreboard players operation @s MINUTES1 = @s SECONDS2
execute as @a run scoreboard players operation @s SECONDS2 %= $6 CONST
execute as @a run scoreboard players operation @s MINUTES1 /= $6 CONST
execute as @a run scoreboard players operation @s MINUTES2 = @s MINUTES1
execute as @a run scoreboard players operation @s MINUTES1 %= $10 CONST
execute as @a run scoreboard players operation @s MINUTES2 /= $10 CONST
execute as @a run scoreboard players operation @s PARTIAL1 *= $5 CONST

execute as @a[tag=RaceInProgress] run title @s actionbar [{"score":{"name":"@s","objective":"MINUTES2"}},{"score":{"name":"@s","objective":"MINUTES1"}},":",{"score":{"name":"@s","objective":"SECONDS2"}},{"score":{"name":"@s","objective":"SECONDS1"}},":",{"score":{"name":"@s","objective":"PARTIAL2"}},{"score":{"name":"@s","objective":"PARTIAL1"}}]