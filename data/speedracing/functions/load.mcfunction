scoreboard objectives add CP dummy
scoreboard objectives add OLDCP dummy
scoreboard objectives add TIME dummy
scoreboard objectives add TEMP dummy
scoreboard objectives add TRACK dummy
scoreboard objectives add VAR dummy
scoreboard objectives add CONST dummy
scoreboard players set $24000 CONST 24000

data merge storage tracks {TrackData:[{id:1,Name:"Alex Circuit",StartPos:{x:2.43d,y:76.00d,z:88.99d,pitch:-361.29f,yaw:6.15f},Time:12345,Weather:{Clear:1b}}]}