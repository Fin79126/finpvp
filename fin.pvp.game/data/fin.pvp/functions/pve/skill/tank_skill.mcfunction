scoreboard players set @s Fpvp_CT 400

playsound minecraft:entity.experience_orb.pickup master @s

execute rotated as @s positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^-2.5 {Tags:["Fpvp_Tank_range"],Marker:1b,Invisible:1b,NoGravity:1b}
execute as @e[tag=Fpvp_Tank_range,limit=1] at @s run tp ~ 1.8 ~
execute as @e[type=!player,type=!armor_stand,distance=..3] run data modify entity @s Motion set from entity @e[tag=Fpvp_Tank_range,limit=1] Pos
kill @e[tag=Fpvp_Tank_range]




effect give @e[type=!player,type=!armor_stand,distance=..3] slowness 10 5 false
