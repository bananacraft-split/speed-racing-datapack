scoreboard objectives add CP dummy
scoreboard objectives add OLDCP dummy
scoreboard objectives add TIME dummy
scoreboard objectives add TEMP dummy
scoreboard objectives add TRACK dummy
scoreboard objectives add VAR dummy
scoreboard objectives add CONST dummy
scoreboard objectives add CUT dummy
scoreboard objectives add kit dummy
scoreboard objectives add kitoff dummy
scoreboard objectives add ID dummy
scoreboard objectives add POS dummy
scoreboard objectives add X dummy
scoreboard objectives add Y dummy
scoreboard objectives add Z dummy
scoreboard objectives add W dummy
scoreboard objectives add DIST dummy
scoreboard objectives add NEXTD dummy
scoreboard objectives add PATH dummy
scoreboard objectives add Level dummy
scoreboard objectives add RTDELTA dummy
scoreboard objectives add POSITION dummy
scoreboard objectives add SECONDS1 dummy
scoreboard objectives add SECONDS2 dummy
scoreboard objectives add MINUTES1 dummy
scoreboard objectives add MINUTES2 dummy
scoreboard objectives add PARTIAL1 dummy
scoreboard objectives add PARTIAL2 dummy
scoreboard objectives add USES minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add spectime minecraft.custom:minecraft.play_time
scoreboard players set $1 CONST 1
scoreboard players set $2 CONST 2
scoreboard players set $5 CONST 5
scoreboard players set $6 CONST 6
scoreboard players set $10 CONST 10
scoreboard players set $24000 CONST 24000

execute unless data storage options {Loaded:1b} run data merge storage tracks {TrackData:[]}
execute unless data storage options {Loaded:1b} run data merge storage var {TrackId:1, LastKitId:3, NextCutId:3}
execute unless data storage options {Loaded:1b} run data merge storage options {Loaded:1b,200CC:0b}