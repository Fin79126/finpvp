tp @s ^ ^ ^0.8
particle heart ~ ~1 ~ 0.0 0.0 0.0 0 1
execute as @a[team=!Healer,team=!Red,distance=..2] run effect give @s instant_health 1 0 true
execute if entity @a[team=!Healer,team=!Red,distance=..2] run scoreboard players add @a[team=Healer] Fpvp_R_heal 1
execute if entity @a[team=!Healer,team=!Red,distance=..2] run kill @s
