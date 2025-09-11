execute unless entity @a[tag=GetL3Items] run tag @r[tag=NeedsLap3Items] add GetL3Items
execute as @a[tag=GetL3Items] at @s as @e[type=interaction,tag=kit] if score @s kit = @p kit run tag @s add IE3
execute as @a[tag=GetL3Items] at @s run summon item ~ ~ ~ {Item:{id:"dirt",Count:65b},PickupDelay:0s}
execute as @a[tag=GetL3Items] at @s run summon item ~ ~ ~ {Item:{id:"dirt",Count:65b},PickupDelay:0s}
execute as @a[tag=GetL3Items] at @s run summon item ~ ~ ~ {Item:{id:"dirt",Count:65b},PickupDelay:0s}