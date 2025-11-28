# -- 座っている人が居なければパーティクル

execute on passengers run tag @s add mkc_This

execute unless entity @a[tag=mkc_This,distance=..5] as @s[tag=mkChair_buffLv.1] at @s run particle dust{color:6078207,scale:0.5} ~ ~0.3 ~ 0 0 0 0 10 normal @a[distance=..5]
execute unless entity @a[tag=mkc_This,distance=..5] as @s[tag=mkChair_buffLv.2] at @s run particle dust{color:16755548,scale:0.5} ~ ~0.3 ~ 0 0 0 0 10 normal @a[distance=..5]
execute unless entity @a[tag=mkc_This,distance=..5] as @s[tag=mkChair_buffLv.3] at @s run particle dust{color:16752114,scale:0.5} ~ ~0.3 ~ 0 0 0 0 10 normal @a[distance=..5]
execute unless entity @a[tag=mkc_This,distance=..5] as @s[tag=mkChair_buffLv.4] at @s run particle dust{color:16770560,scale:0.5} ~ ~0.3 ~ 0 0 0 0 10 normal @a[distance=..5]

tag @n[tag=mkc_This,distance=..10] remove mkc_This