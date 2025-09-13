execute as @a[nbt={ActiveEffects:[{Id:27,Amplifier:0b,Duration:1199}]}] run portal debug accelerate -10
execute as @a[nbt={ActiveEffects:[{Id:27}]}] run effect clear @s unluck

execute as @e[type=snowball,tag=!e] at @s run summon potion ~ ~ ~ {Item:{id:"splash_potion",tag:{ArmourersWorkshop:{SkinType:"armourers:item",Identifier:"db:50iFOyMBxb"},CustomPotionEffects:[{Id:27,Duration:1200,ShowParticles:0b,ShowIcon:0b}]},Count:1b},Tags:["a"]}
execute as @e[type=snowball,tag=!e] at @s run ride @e[type=potion,tag=a,limit=1,sort=nearest] mount @s
execute as @e[type=snowball] at @s run tag @s add e

execute as @e[type=snowball] at @s run data modify entity @e[type=potion,tag=a,limit=1,sort=nearest] Motion set from entity @s Motion