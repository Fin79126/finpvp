execute as @s[scores={Fpvp_cooltime=60..,Fpvp_ROD=1..}] at @s run function fin.pvp:guns/longbow_shoot
execute as @s[scores={Fpvp_cooltime=..55,Fpvp_ROD=1..}] at @s run scoreboard players set @s Fpvp_ROD 0
