# - 判定

tag @s add mkc_This_i

execute on target if entity @s[tag=mkc_This] run tag @e[type=interaction,distance=..20,tag=mkc_This_i] add mkc_rideThis
data remove entity @s interaction

tag @s remove mkc_This_i

