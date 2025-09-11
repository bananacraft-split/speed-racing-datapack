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
execute as @e[tag=InteractionEntity,limit=1] at @s run data modify entity @e[type=item,limit=1,nbt={Item:{Count:65b}}] Item set from block ~ ~ ~4 Items[{Slot:18b}]
execute as @e[tag=InteractionEntity,limit=1] at @s run data modify entity @e[type=item,limit=1,nbt={Item:{Count:65b}}] Item set from block ~ ~ ~4 Items[{Slot:19b}]
execute as @e[tag=InteractionEntity,limit=1] at @s run data modify entity @e[type=item,limit=1,nbt={Item:{Count:65b}}] Item set from block ~ ~ ~4 Items[{Slot:20b}]
execute as @e[tag=InteractionEntity,limit=1] at @s run data modify entity @e[type=item,limit=1,nbt={Item:{Count:65b}}] Item set from block ~ ~ ~4 Items[{Slot:21b}]
execute as @e[tag=InteractionEntity,limit=1] at @s run data modify entity @e[type=item,limit=1,nbt={Item:{Count:65b}}] Item set from block ~ ~ ~4 Items[{Slot:22b}]
execute as @e[tag=InteractionEntity,limit=1] at @s run data modify entity @e[type=item,limit=1,nbt={Item:{Count:65b}}] Item set from block ~ ~ ~4 Items[{Slot:23b}]
execute as @e[tag=InteractionEntity,limit=1] at @s run data modify entity @e[type=item,limit=1,nbt={Item:{Count:65b}}] Item set from block ~ ~ ~4 Items[{Slot:24b}]
execute as @e[tag=InteractionEntity,limit=1] at @s run data modify entity @e[type=item,limit=1,nbt={Item:{Count:65b}}] Item set from block ~ ~ ~4 Items[{Slot:25b}]
execute as @e[tag=InteractionEntity,limit=1] at @s run data modify entity @e[type=item,limit=1,nbt={Item:{Count:65b}}] Item set from block ~ ~ ~4 Items[{Slot:26b}]
kill @e[type=item,nbt={Item:{Count:65b}}]
tag @e[tag=IE] remove IE
