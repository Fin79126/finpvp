scoreboard players set @s Fpvp_GLOW 0
kill @e[type=item,limit=1,sort=nearest,distance=..5]
execute at @a run playsound entity.arrow.hit_player master @s ~ ~ ~
effect give @a[distance=2..,team=!Red] glowing 3 1 true
title @a[distance=2..,team=!Red] title {"text": "!","color": "red"}
title @a[distance=2..,team=!Red] subtitle {"text": "誰かに狙われてる","color": "yellow"}


