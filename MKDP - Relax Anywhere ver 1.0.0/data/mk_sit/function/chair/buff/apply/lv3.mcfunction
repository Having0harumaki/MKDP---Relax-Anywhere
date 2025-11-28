# -- 3分バフ発動

# 演出
title @s actionbar [{text:"リラックス完了",color:"green"}]
particle minecraft:composter ~ ~1 ~ 0.5 0.5 0.5 0.2 30
playsound entity.player.levelup master @s ~ ~ ~ 0.25 1.77

# エフェクト
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0.1f,RadiusOnUse:-10f,Duration:6,Age:4,WaitTime:4,potion_contents:{custom_effects:[{id:"minecraft:strength",amplifier:0,duration:24000,show_particles:0b,show_icon:1b,ambient:1b},{id:"minecraft:health_boost",amplifier:0,duration:24000,show_particles:0b,show_icon:1b,ambient:1b}]}}

# reset
scoreboard players reset @s mkChair.Buff_3m