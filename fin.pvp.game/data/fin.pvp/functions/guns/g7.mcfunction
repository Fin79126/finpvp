execute as @s[scores={Fpvp_cooltime=15..,Fpvp_ROD=1..}] at @s run function fin.pvp:guns/g7_shoot
execute as @s[scores={Fpvp_cooltime=..10,Fpvp_ROD=1..}] at @s run scoreboard players set @s Fpvp_ROD 0
