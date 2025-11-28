# - 10tickごとに実行される

execute as @e[type=interaction,tag=mkChair_Interaction,tag=!mkChair_other,distance=..1000] at @s if block ~ ~ ~ air run function mk_sit:chair/break
execute as @e[type=interaction,tag=mkChair_Interaction,tag=mkChair_carpet,distance=..1000] at @s if block ~ ~1 ~ air run function mk_sit:chair/break
execute as @e[type=interaction,tag=mkChair_Interaction,tag=mkChair_other,distance=..1000] at @s if block ~ ~-0.1 ~ #mk_sit:airs run function mk_sit:chair/break
scoreboard players set #Interaction.Tick mkChair.place 0
