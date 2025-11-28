# -- 座っていないときにスコアを減少させる

# -- スコアのリセット
scoreboard players reset @s mkChair.Buff_1
scoreboard players reset @s mkChair.Buff_2
scoreboard players reset @s mkChair.Buff_3m

# reset
advancement revoke @s only mk_sit:buff/remove
