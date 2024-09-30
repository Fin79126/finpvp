scoreboard players add @s Fpvp_S_tyuusya 1

# 初手発動
xp set @s[scores={Fpvp_S_tyuusya=1}] 90 levels


# 常時発動
xp add @s -1 levels
effect give @s slowness 1 3 true
effect give @s jump_boost 1 200 true

# 回復
effect give @s[level=1] instant_health 1 1 true 
effect clear @s[level=1] slowness
effect clear @s[level=1] jump_boost
clear @s[level=1] paper 1
xp set @s[level=1] 0 levels



