scoreboard players set @s Fpvp_CT 400

execute positioned ^ ^ ^2.5 run particle flame ~ ~1 ~ 2.0 1.0 2.0 0 100
execute positioned ^ ^ ^2.5 as @e[distance=..4] run data modify entity @s Fire set value 100s
playsound entity.blaze.shoot master @a ~ ~ ~ 0.3

