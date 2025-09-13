execute as @e[tag=RootEntity,limit=1] at @s run summon minecraft:chest_minecart ~3 ~ ~3 {Tags:["chest1","new"]}
execute as @e[tag=RootEntity,limit=1] at @s run summon minecraft:chest_minecart ~3 ~ ~3 {Tags:["chest2","new"]}
item replace entity @e[tag=chest1,tag=new] container.0 from entity @s inventory.0
item replace entity @e[tag=chest1,tag=new] container.1 from entity @s inventory.1
item replace entity @e[tag=chest1,tag=new] container.2 from entity @s inventory.2
item replace entity @e[tag=chest1,tag=new] container.3 from entity @s inventory.3
item replace entity @e[tag=chest1,tag=new] container.4 from entity @s inventory.4
item replace entity @e[tag=chest1,tag=new] container.5 from entity @s inventory.5
item replace entity @e[tag=chest1,tag=new] container.6 from entity @s inventory.6
item replace entity @e[tag=chest1,tag=new] container.7 from entity @s inventory.7
item replace entity @e[tag=chest1,tag=new] container.8 from entity @s inventory.8
item replace entity @e[tag=chest1,tag=new] container.9 from entity @s inventory.9
item replace entity @e[tag=chest1,tag=new] container.10 from entity @s inventory.10
item replace entity @e[tag=chest1,tag=new] container.11 from entity @s inventory.11
item replace entity @e[tag=chest1,tag=new] container.12 from entity @s inventory.12
item replace entity @e[tag=chest1,tag=new] container.13 from entity @s inventory.13
item replace entity @e[tag=chest1,tag=new] container.14 from entity @s inventory.14
item replace entity @e[tag=chest1,tag=new] container.15 from entity @s inventory.15
item replace entity @e[tag=chest1,tag=new] container.16 from entity @s inventory.16
item replace entity @e[tag=chest1,tag=new] container.17 from entity @s inventory.17
item replace entity @e[tag=chest1,tag=new] container.18 from entity @s inventory.18
item replace entity @e[tag=chest1,tag=new] container.19 from entity @s inventory.19
item replace entity @e[tag=chest1,tag=new] container.20 from entity @s inventory.20
item replace entity @e[tag=chest1,tag=new] container.21 from entity @s inventory.21
item replace entity @e[tag=chest1,tag=new] container.22 from entity @s inventory.22
item replace entity @e[tag=chest1,tag=new] container.23 from entity @s inventory.23
item replace entity @e[tag=chest1,tag=new] container.24 from entity @s inventory.24
item replace entity @e[tag=chest1,tag=new] container.25 from entity @s inventory.25
item replace entity @e[tag=chest1,tag=new] container.26 from entity @s inventory.26
item replace entity @e[tag=chest2,tag=new] container.0 from entity @s hotbar.0
item replace entity @e[tag=chest2,tag=new] container.1 from entity @s hotbar.1
item replace entity @e[tag=chest2,tag=new] container.2 from entity @s hotbar.2
item replace entity @e[tag=chest2,tag=new] container.3 from entity @s hotbar.3
item replace entity @e[tag=chest2,tag=new] container.4 from entity @s hotbar.4
item replace entity @e[tag=chest2,tag=new] container.5 from entity @s hotbar.5
item replace entity @e[tag=chest2,tag=new] container.6 from entity @s hotbar.6
item replace entity @e[tag=chest2,tag=new] container.7 from entity @s hotbar.7
item replace entity @e[tag=chest2,tag=new] container.8 from entity @s hotbar.8
item replace entity @e[tag=chest2,tag=new] container.9 from entity @s armor.head
item replace entity @e[tag=chest2,tag=new] container.10 from entity @s armor.chest
item replace entity @e[tag=chest2,tag=new] container.11 from entity @s armor.legs
item replace entity @e[tag=chest2,tag=new] container.12 from entity @s armor.feet
item replace entity @e[tag=chest2,tag=new] container.13 from entity @s weapon.offhand
clear @s
scoreboard players operation @e[tag=chest1,tag=new] ID = @s ID
scoreboard players operation @e[tag=chest2,tag=new] ID = @s ID
tag @e[tag=chest1,tag=new] remove new
tag @e[tag=chest2,tag=new] remove new
tag @s add adv