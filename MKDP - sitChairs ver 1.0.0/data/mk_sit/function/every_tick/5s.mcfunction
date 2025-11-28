# - 5秒ごとに実行される
execute as @e[type=armor_stand,tag=mkChair_Place,tag=!This,distance=..1000] at @s run function mk_sit:chair/delete_stand
scoreboard players set #delete.Tick mkChair.place 0

