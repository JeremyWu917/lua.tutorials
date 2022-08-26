local mytable = {}
mytable[1] = "Lua"
print(type(mytable))

print(mytable[1])
mytable = nil

mytable = {}
print("mytable 的类型是 ", type(mytable))

mytable[1] = "Lua"
mytable["wow"] = "修改前"
print("mytable 索引为 1 的元素是 ", mytable[1])
print("mytable 索引为 wow 的元素是 ", mytable["wow"])

-- alternatetable和mytable的是指同一个 table
alternatetable = mytable

print("alternatetable 索引为 1 的元素是 ", alternatetable[1])
print("mytable 索引为 wow 的元素是 ", alternatetable["wow"])

alternatetable["wow"] = "修改后"

print("mytable 索引为 wow 的元素是 ", mytable["wow"])

-- 释放变量
alternatetable = nil
print("alternatetable 是 ", alternatetable)

-- mytable 仍然可以访问
print("mytable 索引为 wow 的元素是 ", mytable["wow"])

mytable = nil
print("mytable 是 ", mytable)

-- table 的常见操作

local table1 = { 11, 2, 3, 4, 5, 6, 7, 8, 9 }

-- 连接
print(table.concat(table1))
-- 插入
table.insert(table1, 1, 0)
print(table.concat(table1))
-- 最大元素
print(table.maxn(table1))
-- 移除
table.remove(table1, 1)
print(table.concat(table1))
-- 排序
table.sort(table1)
print(table.concat(table1))
