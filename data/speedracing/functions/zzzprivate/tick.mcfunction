# New Players
execute as @a unless score @s ID matches 1.. run function speedracing:zzzprivate/other/newplayer

# Update timers
function speedracing:zzzprivate/while_racing/update_timer
execute if score $CUT VAR matches 0..1000 run scoreboard players add $CUT VAR 1
execute if score $CUT2 VAR matches 0..1000 run scoreboard players add $CUT2 VAR 1

# Cutscenes
execute if score $CUT VAR matches 0..200 run execute as @e[tag=SPLINE] if score @s TRACK = $TRACK VAR if score @s CUT = $CUT VAR at @s run tp @a[tag=RaceStart] ~ ~-20 ~ ~ ~

execute if score $CUT2 VAR matches 0..200 run execute as @e[type=minecraft:armor_stand,tag=GKT] if score @s TRACK = $TRACK VAR if score @s CUT = $CUT2 VAR run tp @a[tag=CutTest] @s

# Kit select
execute as @e[type=interaction,tag=kit] at @s store success entity @s attack.player[] int 0 on attacker run scoreboard players operation @s kitoff = @e[type=interaction,sort=nearest,distance=..1] kit

# Apply speed
execute if data storage options {200CC:0b} run effect give @a speed 1 10 true
execute if data storage options {200CC:1b} run effect give @a speed 1 13 true

# Comebacks if needed
execute if data storage options {Comebacks:1b} run function speedracing:zzzprivate/other/do_comebacks

# Kit apply
execute if data storage options {Kits:1b} as @a run scoreboard players operation @s kit = @s kitoff
execute if data storage options {Kits:0b} store result score @a kit run data get storage options DefaultKit

# Item storing
execute as @a[gamemode=adventure,tag=!adv] run function speedracing:zzzprivate/other/store_items
execute as @a[gamemode=!adventure,tag=adv] unless entity @s[tag=RaceStart] unless entity @s[tag=spec] run function speedracing:zzzprivate/other/fetch_items

# Position calculation
execute if entity @e[tag=RaceInProgress] run function speedracing:zzzprivate/while_racing/calculate_positions

# Spectate Target
tag @a[tag=SpectateTarget,tag=!RaceInProgress] remove SpectateTarget
execute unless entity @a[tag=SpectateTarget] if entity @a[tag=RaceInProgress] run function speedracing:zzzprivate/other/reassign_spectate_target
execute if entity @a[tag=spec] unless entity @a[tag=SpectateTarget] run tellraw @a[tag=spec] "The race is over, so you have been teleported back to the hub automatically."
execute if entity @a[tag=spec] unless entity @a[tag=SpectateTarget] as @a[tag=spec] run function speedracing:zzzprivate/other/stop_spectating

# Stop when gamemode switch
execute as @a[tag=spec,gamemode=!spectator] run tag @s remove spec

# Spectate message
tellraw @a[tag=spec,scores={spectime=600..}] ["You have finished the race and are now spectating ",{"selector":"@a[tag=SpectateTarget]"},". To stop spectating, click ",{"text":"here","underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add StopSpec"},"hoverEvent":{"action":"show_text","contents":["Stop Spectating ",{"selector":"@a[tag=SpectateTarget]"}]},"color":"green"},"."]
scoreboard players reset @a[tag=spec,scores={spectime=600..}] spectime

# Spectate
execute as @a[tag=spec] run spectate
execute as @a[tag=spec] run spectate @a[tag=SpectateTarget,limit=1]

# Carrot on stick use
execute as @a[scores={USES=1..}] run function speedracing:zzzprivate/kit/carrot_on_stick_use

# Enderman timer
execute as @e[type=marker,tag=EnderTP] run scoreboard players remove @s TIME 1
execute as @e[type=marker,tag=EnderTP,scores={TIME=..0}] run function speedracing:zzzprivate/kit/enderman_do_tp