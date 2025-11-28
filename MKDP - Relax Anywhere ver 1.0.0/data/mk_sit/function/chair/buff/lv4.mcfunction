# -- Lv.2に座っている際常時実行

# score
scoreboard players add @s mkChair.Buff_2 1
scoreboard players add @s mkChair.Buff_3m 1

# 常時効果
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0.1f,RadiusOnUse:-10f,Duration:6,Age:4,WaitTime:4,potion_contents:{custom_effects:[{id:"minecraft:luck",amplifier:100,duration:40,show_particles:0b,show_icon:1b,ambient:1b},{id:"minecraft:resistance",amplifier:0,duration:40,show_particles:0b,show_icon:1b,ambient:1b}]}}

# 効果発動(体力回復：中)
execute if entity @s[scores={mkChair.Buff_2=100..}] run effect give @s regeneration 2 1 true
execute if entity @s[scores={mkChair.Buff_2=100..}] run scoreboard players set @s mkChair.Buff_1 0

# 効果発動(空腹度回復：中)
execute if entity @s[scores={mkChair.Buff_2=100..}] run effect give @s saturation 1 1 true
execute if entity @s[scores={mkChair.Buff_2=100..}] run scoreboard players set @s mkChair.Buff_2 0

# - 3分カウント
# 1分
execute if entity @s[scores={mkChair.Buff_3m=1200}] run title @s actionbar [{text:"リラックス中... 残り2分",color:"green"}]
# 2分
execute if entity @s[scores={mkChair.Buff_3m=2400}] run title @s actionbar [{text:"リラックス中... 残り1分",color:"green"}]
# 2分
execute if entity @s[scores={mkChair.Buff_3m=3600..}] run function mk_sit:chair/buff/apply/lv4

# reset
advancement revoke @s only mk_sit:buff/lv4