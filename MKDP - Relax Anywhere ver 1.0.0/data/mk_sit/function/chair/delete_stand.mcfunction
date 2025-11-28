#> 未処理のアーマースタンドを削除する

# - アイテムをドロップする
execute if entity @s[tag=mkChair_Place_lv1] run loot spawn ~ ~ ~ loot mk_sit:chair
execute if entity @s[tag=mkChair_Place_lv2] run loot spawn ~ ~ ~ loot mk_sit:chair_lv2
execute if entity @s[tag=mkChair_Place_lv3] run loot spawn ~ ~ ~ loot mk_sit:chair_lv3
execute if entity @s[tag=mkChair_Place_lv4] run loot spawn ~ ~ ~ loot mk_sit:chair_lv4

# - 削除
kill @s
