execute as @s[scores={Fpvp_cooltime=25..,Fpvp_ROD=1..}] at @s run function fin.pvp:guns/gureran_shoot
execute as @s[scores={Fpvp_cooltime=..20,Fpvp_ROD=1..}] at @s run scoreboard players set @s Fpvp_ROD 0
