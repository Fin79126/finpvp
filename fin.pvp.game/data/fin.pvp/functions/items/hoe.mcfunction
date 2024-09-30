scoreboard players set @s Fpvp_HOE 0

kill @e[type=item,limit=1,sort=nearest,distance=..5]
item replace entity @s weapon.mainhand with minecraft:wooden_hoe
summon creeper ~0 ~0 ~0 {powered:0,ignited:1,ExplosionRadius:3,Fuse:1}
effect give @s minecraft:resistance 1 3 true

