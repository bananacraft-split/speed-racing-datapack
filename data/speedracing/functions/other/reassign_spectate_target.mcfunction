tag @a[tag=RaceInProgress,sort=random,limit=1] add SpectateTarget
execute unless entity @a[tag=SpectateTarget] run tellraw @a[tag=spec] "The race is over, so you have been teleported back to the hub automatically."
execute unless entity @a[tag=SpectateTarget] run function speedracing:other/stop_spectating