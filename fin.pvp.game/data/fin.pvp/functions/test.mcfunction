# テスト用クリーパー召喚
kill @e[tag=HPTest]
summon creeper ~ ~ ~ {NoAI:1b,Tags:["HPTest"]}
tag @e[tag=HPTest] add player
attribute @e[tag=HPTest,limit=1] generic.max_health base set 60
effect give @e[tag=HPTest] minecraft:instant_health 1 100 true

# ボスバーの設定
bossbar add test "テストのHP"
bossbar set test color white
bossbar set test max 60
bossbar set test players @a
