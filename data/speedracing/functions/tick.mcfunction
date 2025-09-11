# New Players
execute as @a unless score @s ID matches 1.. run function speedracing:other/newplayer

# Kit select
execute as @e[type=interaction,tag=kit] at @s store success entity @s attack.player[] int 0 on attacker run scoreboard players operation @s kitoff = @e[type=interaction,sort=nearest,distance=..1] kit



execute as @a[gamemode=adventure,tag=!adv] run function speedracing:other/store_items
execute as @a[gamemode=!adventure,tag=adv] unless entity @s[tag=RaceStart] unless entity @s[tag=spec] run function speedracing:other/fetch_items