execute if entity @s[scores={kit=1}] at @s as @a[tag=RaceInProgress] if score @s TRACK = @p TRACK unless score @s ID = @p ID run effect give @s blindness 3 1 true
execute if entity @s[scores={kit=2}] run function speedracing:zzzprivate/kit/enderman_tp
# Get rid of a carrot on a stick
clear @s minecraft:carrot_on_a_stick 1
scoreboard players set @s USES 0