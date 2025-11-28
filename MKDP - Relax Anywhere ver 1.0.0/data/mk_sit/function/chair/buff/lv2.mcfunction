# -- Lv.2に座っている際常時実行

# score
scoreboard players add @s mkChair.Buff_1 1

# 効果発動(空腹度回復：小)
execute if entity @s[scores={mkChair.Buff_1=200..}] run effect give @s saturation 1 0 true
execute if entity @s[scores={mkChair.Buff_1=200..}] run scoreboard players set @s mkChair.Buff_1 0


# reset
advancement revoke @s only mk_sit:buff/lv2