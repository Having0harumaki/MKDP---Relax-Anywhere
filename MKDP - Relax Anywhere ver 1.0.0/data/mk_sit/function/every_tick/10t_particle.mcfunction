# - particle(10tick)
execute as @a at @s as @e[type=interaction,tag=mkChair_Interaction,distance=..7.5] at @s run function mk_sit:chair/particle
scoreboard players set #Particle.Tick mkChair.place 0