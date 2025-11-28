# -- テスト

# -- アーマースタンド処理
tag @n[type=armor_stand,tag=mkChair_Place,distance=..15] add This
    # - 既に設置されている場合キャンセル
    execute as @n[type=armor_stand,tag=mkChair_Place,distance=..15] at @s if entity @e[type=interaction,distance=..1,tag=mkChair_Interaction] run tag @n[type=armor_stand,tag=This,distance=..15] add mkc_skip
    execute if entity @n[type=armor_stand,tag=mkc_skip,distance=..15] run tellraw @p[scores={mkChair.place=1..}] [{text:"既に設置されているブロックには使用できません",color:red}]
    # - ブロックが「階段」
    execute as @n[type=armor_stand,tag=This,distance=..15,tag=!mkc_skip] at @s if block ~ ~-0.1 ~ #stairs run function mk_sit:chair/summon/stair
    # - ブロックが「ハーフブロック(top)」
    execute as @n[type=armor_stand,tag=This,distance=..15,tag=!mkc_skip] at @s if block ~ ~-0.1 ~ #slabs[type=top] run function mk_sit:chair/summon/slab_top
    # - ブロックが「ハーフブロック(bottom)」
    execute as @n[type=armor_stand,tag=This,distance=..15,tag=!mkc_skip] at @s if block ~ ~-0.1 ~ #slabs[type=bottom] run function mk_sit:chair/summon/slab_bottom
    # - ブロックが「カーペット」
    execute as @n[type=armor_stand,tag=This,distance=..15,tag=!mkc_skip] at @s if block ~ ~ ~ #wool_carpets run function mk_sit:chair/summon/carpet
    execute as @n[type=armor_stand,tag=This,distance=..15,tag=!mkc_skip] at @s if block ~ ~ ~ moss_carpet run function mk_sit:chair/summon/carpet
    execute as @n[type=armor_stand,tag=This,distance=..15,tag=!mkc_skip] at @s if block ~ ~ ~ pale_moss_carpet run function mk_sit:chair/summon/carpet
    # - その他のブロック
    execute as @n[type=armor_stand,tag=This,distance=..15,tag=!mkc_skip] at @s if entity @s[tag=!This.stop] unless block ~ ~-0.1 ~ #mk_sit:airs run function mk_sit:chair/summon/other
    # - アイテムをドロップ
    execute as @n[type=armor_stand,tag=!This.stop,distance=..15,tag=mkChair_Place_lv1] at @s run loot spawn ~ ~ ~ loot mk_sit:chair
    execute as @n[type=armor_stand,tag=!This.stop,distance=..15,tag=mkChair_Place_lv2] at @s run loot spawn ~ ~ ~ loot mk_sit:chair_lv2
    execute as @n[type=armor_stand,tag=!This.stop,distance=..15,tag=mkChair_Place_lv3] at @s run loot spawn ~ ~ ~ loot mk_sit:chair_lv3
    execute as @n[type=armor_stand,tag=!This.stop,distance=..15,tag=mkChair_Place_lv4] at @s run loot spawn ~ ~ ~ loot mk_sit:chair_lv4

    # - レベルタグを付与
    execute as @n[type=armor_stand,tag=This,distance=..15,tag=mkChair_Place_lv1,tag=This.stop] run tag @n[type=interaction,tag=mkChair_Interaction,tag=mkc_new,distance=..3] add mkChair_buffLv.1
    execute as @n[type=armor_stand,tag=This,distance=..15,tag=mkChair_Place_lv2,tag=This.stop] run tag @n[type=interaction,tag=mkChair_Interaction,tag=mkc_new,distance=..3] add mkChair_buffLv.2
    execute as @n[type=armor_stand,tag=This,distance=..15,tag=mkChair_Place_lv3,tag=This.stop] run tag @n[type=interaction,tag=mkChair_Interaction,tag=mkc_new,distance=..3] add mkChair_buffLv.3
    execute as @n[type=armor_stand,tag=This,distance=..15,tag=mkChair_Place_lv4,tag=This.stop] run tag @n[type=interaction,tag=mkChair_Interaction,tag=mkc_new,distance=..3] add mkChair_buffLv.4

    # - 削除する
    tag @n[type=interaction,tag=mkChair_Interaction,tag=mkc_new,distance=..3] remove mkc_new
    execute as @n[type=armor_stand,tag=This,distance=..15] at @s run kill @s
    

# -- リセット
scoreboard players reset @s mkChair.place
advancement revoke @s only mk_sit:place