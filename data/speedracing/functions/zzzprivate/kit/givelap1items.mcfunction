execute at @s as @e[type=interaction,tag=kit] if score @s kit = @p kit run tag @s add InteractionEntity
execute at @s run summon item ~ ~ ~ {Item:{id:"dirt",Count:65b},PickupDelay:0s}
execute at @s run summon item ~ ~ ~ {Item:{id:"dirt",Count:65b},PickupDelay:0s}
execute at @s run summon item ~ ~ ~ {Item:{id:"dirt",Count:65b},PickupDelay:0s}
execute at @s run summon item ~ ~ ~ {Item:{id:"dirt",Count:65b},PickupDelay:0s}
execute at @s run summon item ~ ~ ~ {Item:{id:"dirt",Count:65b},PickupDelay:0s}
execute at @s run summon item ~ ~ ~ {Item:{id:"dirt",Count:65b},PickupDelay:0s}
execute at @s run summon item ~ ~ ~ {Item:{id:"dirt",Count:65b},PickupDelay:0s}
execute at @s run summon item ~ ~ ~ {Item:{id:"dirt",Count:65b},PickupDelay:0s}
execute at @s run summon item ~ ~ ~ {Item:{id:"dirt",Count:65b},PickupDelay:0s}
execute at @s as @e[type=item,nbt={Item:{Count:65b}}] run data modify entity @s Motion set from entity @p Motion
execute at @s run data modify entity @e[type=item,limit=1,nbt={Item:{Count:65b}},distance=..1] Owner set from entity @p UUID
execute as @e[tag=InteractionEntity,limit=1] at @s run data modify entity @e[type=item,limit=1,nbt={Item:{Count:65b}}] Item set from block ~ ~ ~4 Items[{Slot:0b}]
execute as @e[tag=InteractionEntity,limit=1] at @s run data modify entity @e[type=item,limit=1,nbt={Item:{Count:65b}}] Item set from block ~ ~ ~4 Items[{Slot:1b}]
execute as @e[tag=InteractionEntity,limit=1] at @s run data modify entity @e[type=item,limit=1,nbt={Item:{Count:65b}}] Item set from block ~ ~ ~4 Items[{Slot:2b}]
execute as @e[tag=InteractionEntity,limit=1] at @s run data modify entity @e[type=item,limit=1,nbt={Item:{Count:65b}}] Item set from block ~ ~ ~4 Items[{Slot:3b}]
execute as @e[tag=InteractionEntity,limit=1] at @s run data modify entity @e[type=item,limit=1,nbt={Item:{Count:65b}}] Item set from block ~ ~ ~4 Items[{Slot:4b}]
execute as @e[tag=InteractionEntity,limit=1] at @s run data modify entity @e[type=item,limit=1,nbt={Item:{Count:65b}}] Item set from block ~ ~ ~4 Items[{Slot:5b}]
execute as @e[tag=InteractionEntity,limit=1] at @s run data modify entity @e[type=item,limit=1,nbt={Item:{Count:65b}}] Item set from block ~ ~ ~4 Items[{Slot:6b}]
execute as @e[tag=InteractionEntity,limit=1] at @s run data modify entity @e[type=item,limit=1,nbt={Item:{Count:65b}}] Item set from block ~ ~ ~4 Items[{Slot:7b}]
execute as @e[tag=InteractionEntity,limit=1] at @s run data modify entity @e[type=item,limit=1,nbt={Item:{Count:65b}}] Item set from block ~ ~ ~4 Items[{Slot:8b}]
kill @e[type=item,nbt={Item:{Count:65b}}]
tag @e[tag=IE] remove InteractionEntity
