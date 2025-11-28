# -- Datapack Main

# -- 処理されていないアーマースタンドをキルする(5秒毎実行)
scoreboard players add #delete.Tick mkChair.place 1
execute if score #delete.Tick mkChair.place matches 100.. run function mk_sit:every_tick/5s

# -- ブロックのないInteractionを削除する(0.5秒毎実行)
scoreboard players add #Interaction.Tick mkChair.place 1
execute if score #Interaction.Tick mkChair.place matches 10.. run function mk_sit:every_tick/10t

# -- パーティクルを表示
scoreboard players add #Particle.Tick mkChair.place 1
execute if score #Particle.Tick mkChair.place matches 10.. run function mk_sit:every_tick/10t_particle