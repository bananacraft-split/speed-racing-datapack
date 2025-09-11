execute store result score C TEMP run time query daytime
scoreboard players operation C TEMP -= $DAYTIME VAR
scoreboard players operation C TEMP %= $24000 CONST
execute if score C TEMP matches 12000.. run time add 12000
execute if score C TEMP matches 6000..11999 run time add 6000
execute if score C TEMP matches 3000..5999 run time add 3000
execute if score C TEMP matches 1500..2999 run time add 1500
execute if score C TEMP matches 750..1499 run time add 750
execute if score C TEMP matches 375..749 run time add 375
execute if score C TEMP matches 187..374 run time add 187
execute if score C TEMP matches 93..186 run time add 93
execute if score C TEMP matches 46..92 run time add 46
execute if score C TEMP matches 23..45 run time add 23
execute if score C TEMP matches 11..22 run time add 11
execute if score C TEMP matches 5..10 run time add 5
execute if score C TEMP matches 2..4 run time add 2
execute if score C TEMP matches 1 run time add 1
execute unless score C TEMP matches 0 run function speedracing:race_start/update_time