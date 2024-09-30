execute as @s[scores={Fpvp_siege_drone_power=1,Fpvp_ROD=1..}] at @s run function fin.pvp:siege/items/drone/end
execute as @s[scores={Fpvp_siege_drone_power=0,Fpvp_ROD=1..}] at @s run function fin.pvp:siege/items/drone/startup
