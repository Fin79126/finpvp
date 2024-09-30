scoreboard players add @e[type=minecraft:snowball] Fpvp_snow_time 1
scoreboard players add @e[tag=Bomb_time] Fpvp_bomb_time 1
execute at @e[type=minecraft:snowball,scores={Fpvp_snow_time=1}] if block ~ ~ ~ air run summon minecraft:armor_stand ~ ~ ~ {Tags:["Bomb_time"],Invulnerable:1b}
execute at @e[type=minecraft:snowball] run tp @e[tag=Bomb_time,limit=1,sort=nearest] ~ ~ ~
execute at @e[tag=Bomb_time,scores={Fpvp_bomb_time=100..}] run summon creeper ~0 ~0 ~0 {powered:0,ignited:1,ExplosionRadius:3,Fuse:1}
kill @e[tag=Bomb_time,scores={Fpvp_bomb_time=100..}]

