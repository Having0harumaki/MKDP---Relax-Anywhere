# -- interactionのあるブロックを破壊された際に実行

# - drop Lv.1
execute if entity @s[tag=mkChair_carpet,tag=mkChair_buffLv.1] run loot spawn ~ ~0.5 ~ loot mk_sit:chair
execute if entity @s[tag=!mkChair_carpet,tag=mkChair_buffLv.1] run loot spawn ~ ~ ~ loot mk_sit:chair

execute if entity @s[tag=mkChair_carpet,tag=mkChair_buffLv.2] run loot spawn ~ ~0.5 ~ loot mk_sit:chair_lv2
execute if entity @s[tag=!mkChair_carpet,tag=mkChair_buffLv.2] run loot spawn ~ ~ ~ loot mk_sit:chair_lv2

execute if entity @s[tag=mkChair_carpet,tag=mkChair_buffLv.3] run loot spawn ~ ~0.5 ~ loot mk_sit:chair_lv3
execute if entity @s[tag=!mkChair_carpet,tag=mkChair_buffLv.3] run loot spawn ~ ~ ~ loot mk_sit:chair_lv3

execute if entity @s[tag=mkChair_carpet,tag=mkChair_buffLv.4] run loot spawn ~ ~0.5 ~ loot mk_sit:chair_lv4
execute if entity @s[tag=!mkChair_carpet,tag=mkChair_buffLv.4] run loot spawn ~ ~ ~ loot mk_sit:chair_lv4

# - kill
kill @s