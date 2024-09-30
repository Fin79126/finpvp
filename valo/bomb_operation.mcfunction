scoreboard players set #Fpvp_teisuu_20 Fpvp_teisuu 20
scoreboard players set #Fpvp_teisuu_40 Fpvp_teisuu 40
scoreboard players set #Fpvp_teisuu_70 Fpvp_teisuu 70
execute if score #Fpvp_energy_HP Fpvp_bombenergy matches 1 run scoreboard players set #Fpvp_energy_time Fpvp_bombenergy 0
execute if score #Fpvp_energy_HP Fpvp_bombenergy matches 1 run kill @e[tag=Bomb_Energy]
execute if score #Fpvp_energy_HP Fpvp_bombenergy matches 1 run function fin.pvp:valo/win_defence
execute if score #Fpvp_energy_HP Fpvp_bombenergy matches 1 run scoreboard players set #Fpvp_energy_HP Fpvp_bombenergy 0
execute if score #Fpvp_energy_HP Fpvp_bombenergy matches 2 run scoreboard players set #Fpvp_energy_time Fpvp_bombenergy 0
execute if score #Fpvp_energy_HP Fpvp_bombenergy matches 2 store result entity @e[tag=Bomb_Energy,limit=1] Health float 1 run scoreboard players get #Fpvp_teisuu_20 Fpvp_teisuu
execute if score #Fpvp_energy_HP Fpvp_bombenergy matches 2 at @e[tag=Bomb_Energy] run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~
execute if score #Fpvp_energy_HP Fpvp_bombenergy matches 2 run scoreboard players set #Fpvp_energy_HP Fpvp_bombenergy 1
execute if score #Fpvp_energy_HP Fpvp_bombenergy matches 3 run scoreboard players set #Fpvp_energy_time Fpvp_bombenergy 0
execute if score #Fpvp_energy_HP Fpvp_bombenergy matches 3 store result entity @e[tag=Bomb_Energy,limit=1] Health float 1 run scoreboard players get #Fpvp_teisuu_40 Fpvp_teisuu
execute if score #Fpvp_energy_HP Fpvp_bombenergy matches 3 at @e[tag=Bomb_Energy] run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~
execute if score #Fpvp_energy_HP Fpvp_bombenergy matches 3 run scoreboard players set #Fpvp_energy_HP Fpvp_bombenergy 2
execute if score #Fpvp_energy_HP Fpvp_bombenergy matches 4 run scoreboard players set #Fpvp_energy_time Fpvp_bombenergy 0
execute if score #Fpvp_energy_HP Fpvp_bombenergy matches 4 store result entity @e[tag=Bomb_Energy,limit=1] Health float 1 run scoreboard players get #Fpvp_teisuu_70 Fpvp_teisuu
execute if score #Fpvp_energy_HP Fpvp_bombenergy matches 4 at @e[tag=Bomb_Energy] run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~
execute if score #Fpvp_energy_HP Fpvp_bombenergy matches 4 run scoreboard players set #Fpvp_energy_HP Fpvp_bombenergy 3
